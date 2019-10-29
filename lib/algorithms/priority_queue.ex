defmodule Algorithms.PriorityQueue do
  @moduledoc """
  Implementation of priority Queue using
  Algorithms, a functional programming approach

  """
  @type t :: __MODULE__

  @spec new :: PriorityQueue.t()
  def new(), do: []

  @spec empty(PriorityQueue.t()) :: PriorityQueue.t()
  def empty(_queue), do: []

  @spec is_empty(PriorityQueue.t()) :: boolean
  def is_empty([]), do: true
  def is_empty(_queue), do: false

  @spec enqueue(PriorityQueue.t(), any) :: PriorityQueue.t()
  def enqueue(queue, value), do: do_enqueue(queue, value)
  defp do_enqueue([], value), do: [value]
  defp do_enqueue(queue, value) do
    case queue do
      [head|tail] when head >= value ->
        [value|tail]
        [head|tail] ->
          [head|do_enqueue(tail, value)]
    end
  end

  @spec front(PriorityQueue.t()) :: any
  def front([]), do: nil
  def front([head | _tail]), do: head

  @spec dequeue(PriorityQueue.t()) :: PriorityQueue.t()
  def dequeue([]), do: nil
  def dequeue([_head | rest]), do: rest
end
