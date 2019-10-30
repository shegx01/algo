defmodule Algorithms.LinearSearch do
  @type t :: __MODULE__

  @spec search(LinearSearch.t, any) :: any
  def search(list, value) when is_list(list) do
    do_search(list, value)

  end

    defp do_search([], _value), do: false
    defp do_search([value|_tail], value), do: true
    defp do_search([_head|tail], value), do: do_search(tail, value)

end
