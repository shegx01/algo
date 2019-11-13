defmodule Algorithms.Filter do
  def filter_all(list, pred) do
    do_filter_all(list, pred, [])
  end

  defp do_filter_all([],_pred,  res), do: res
  defp do_filter_all([fst, scnd|_rest], pred, res) when Kernel.+(fst, scnd) == pred, do: [{fst, scnd}|res]
  defp do_filter_all(rest,pred, res), do: do_filter_all(rest,pred, res)

end
