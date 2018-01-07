defmodule Idrislib do

  defmacro curry({:/, _, [{name, _, _}, arity]}, opts \\ []) do
    lambdas = opts[:lambdas] || []
    args =
      1..arity |> Enum.map(&({:"arg#{&1}", [], Elixir}))

    define_curried(:def, name, args, lambdas)
  end

  defmacro curryp({:/, _, [{name, _, _}, arity]}) do
    args =
      1..arity |> Enum.map(&({:"arg#{&1}", [], Elixir}))

    define_curried(:defp, name, args)
  end

  defmacro defcurry(definition, _opts \\ [], do: body) do
    {fun, args} = Macro.decompose_call(definition)
    quote do
      unquote(define_curried(:def, fun, args))
      def unquote(fun)(unquote_splicing(args)) do
        unquote(body)
      end
    end
  end

  defmacro defcurryp(definition, _opts \\ [], do: body) do
    {fun, args} = Macro.decompose_call(definition)
    quote do
      unquote(define_curried(:defp, fun, args))
      defp unquote(fun)(unquote_splicing(args)) do
        unquote(body)
      end
    end
  end

  defp define_curried(:def, name, args, lambdas) do
    function_args =
      lambdas
      |> Enum.map(fn {index, arity} ->
        {Enum.at(args, index), arity}
      end)

    single_param_guard =
      function_args
      |> Enum.map(fn {arg, arity} -> quote do is_function(unquote(arg), unquote(arity)) end end)
      |> Enum.reduce(true, fn l, acc -> quote do unquote(acc) and unquote(l) end end)

    body = quote do unquote(name)(unquote_splicing(args)) end

    assigns = for {arg, arity} <- function_args do
      application = quote do: unquote(arg).(unquote_splicing(take_arguments(arity)))
      quote do unquote(arg) = unquote(do_curry(application, take_arguments(arity))) end
    end

    delambdified = if lambdas == [] do
      nil
    else
      quote do
        def unquote(name)(unquote_splicing(args)) when unquote(single_param_guard) do
          unquote(assigns)
          unquote(name)(unquote_splicing(args))
        end
      end
    end

    quote do
      def unquote(name)() do
        unquote(do_curry(body, args))
      end
      unquote(delambdified)
    end
  end
  defp define_curried(:defp, name, args) do
    body = quote do unquote(name)(unquote_splicing(args)) end
    quote do
      defp unquote(name)() do
        unquote(do_curry(body, args))
      end
    end
  end

  defp do_curry(body, [h | args]) do
    quote do fn unquote(h) -> unquote(do_curry(body, args)) end end
  end
  defp do_curry(body, []) do
    quote do: unquote(body)
  end


  defp take_arguments(many) do
    for arg_name <- Enum.take(@arg_names, many), do: {arg_name, [], Elixir}
  end

  defmodule Gengenserver do
    use GenServer

    def start_link(cbs) do
      GenServer.start_link(__MODULE__, cbs)
    end

    def idris_start_link({init, hcall}) do
      start_link({idris_init(init), idris_hcall(hcall)})
    end

    def init({init, hcall}) do
      case init.() do
        {:ok, sub_state} ->
          {:ok, {{init, hcall}, sub_state}}
        # TODO other cases.
      end
    end

    def call(pid, message) do
      GenServer.call(pid, {:message, message})
    end

    def handle_call({:message, message}, from, {{init, hcall}, sub_state}) do
      case hcall.({message, from, sub_state}) do
        {:reply, reply, new_state} ->
          {:reply, reply, {{init, hcall}, new_state}}
        {:reply, reply, new_state, x} ->
          {:reply, reply, {{init, hcall}, new_state}, x}
        {:noreply, new_state} ->
          {:noreply, {{init, hcall}, new_state}}
        {:noreply, new_state, x} ->
          {:noreply, {{init, hcall}, new_state}, x}
        {:stop, reason, reply, new_state} ->
          {:stop, reason, reply, {{init, hcall}, new_state}}
        {:stop, reason, new_state} ->
          {:stop, reason, {{init, hcall}, new_state}}
      end
    end

    def idris_hcall(f) do
      fn ({message, from, sub_state}) ->
        case f.({:MkReq, message, sub_state}) do
          {:Reply, x, y} -> {:reply, x, y}
        end
      end
    end

    def idris_init(f) do
      fn ->
        case f.({}) do
          {:Ok, s} -> {:ok, s}
        end
      end
    end

  end
end
