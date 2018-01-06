defmodule Idrislib do

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
