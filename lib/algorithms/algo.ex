defmodule Algorithms.Algo do
  @doc """
  the idea is to push the maximum of the list to the first

  item so that it can be returned
  """
  @spec maximum([...]) :: any
  def maximum(list) when is_list(list), do: maxi(list)
  defp maxi([h]), do: h
  defp maxi([h1, h2 | t]) when h1 > h2, do: maxi([h1 | t])
  defp maxi([h1, h2 | t]) when h1 < h2, do: maxi([h2 | t])
  defp maxi(_), do: nil

  @doc """
  concatenating a list or list of lists
  to one list
  """
  def concat(list) when is_list(list), do: do_concat(list)
  defp do_concat([]), do: []
  defp do_concat([[] | t]), do: concat(t)
  defp do_concat([[h2 | t2] | t]), do: [h2 | concat([t2 | t])]

  @doc """
  zip 2 lists into a cartesian product type aka tuple
  """
  def zip(list1, list2) when is_list(list1) and is_list(list2), do: do_zip(list1, list2)
  defp do_zip([h1 | t1], [h2 | t2]), do: [{h1, h2} | do_zip(t1, t2)]
  defp do_zip(_, _), do: []

  def unzip([]), do: {[], []}
  # def unzip([{a, b}|t]), do:
end
