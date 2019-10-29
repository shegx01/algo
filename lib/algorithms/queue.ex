defmodule Algorithms.Queue do
  @moduledoc """
  Algorithms to work on Queues that follows
  FIFO
  Burton Implementation of Queue using pair of linked list
  one representing the  front and another the rear of the queue
  in reverse order

  implementation of queue with O(log n) front access time can be implemented
  using Chris Okazaki purely functional data structure

  """
  @type t :: __MODULE__

  @spec new :: Queue.t()
  def new(), do: {[], []}

  @spec empty_queue() :: Queue.t()
  def empty_queue(), do: {[], []}

  @spec is_empty(Queue.t()) :: boolean
  def is_empty({[], []}), do: true
  def is_empty(_queue), do: false

  @spec enqueue(Queue.t(), any) :: Queue.t()
  def enqueue({[], []}, value), do: {[value], []}
  def enqueue({front, rear}, value), do: {front, [value | rear]}

  @spec dequeue(Queue.t()) :: Queue.t()
  def dequeue({[], []}), do: nil
  def dequeue({[], rear}), do: {tl(Enum.reverse(rear)), []}
  def dequeue({[_head | tail], rear}), do: {tail, rear}

  @spec front(Queue.t()) :: any
  def front({[], []}), do: nil
  def front({[head | _tail], _rear}), do: head
  def front({[], rear}), do: List.last(rear)
end
