defmodule Atom do

  def new(value) do
    {:ok, pid} = Agent.start_link(fn -> value end)
    pid
  end

  def deref({:atom, pid}) do
    Agent.get(pid, fn value -> value end)
  end

  def reset!({:atom, pid}, new_value) do
    Agent.update(pid, fn _ -> new_value end)
    new_value
  end

  def swap!({:atom, pid}, func) do
    Agent.get_and_update(pid, fn state ->
      new = func.(state)
      {new, new}
    end)
  end

end
