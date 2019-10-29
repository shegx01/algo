defmodule Algorithms.Stack do
  @moduledoc """
  stack implementation and some functions to work
  on stack ADT
  """
  @type t :: __MODULE__

  @spec new :: Stack.t()
  def new(), do: []
  @spec push(Stack.t(), any) :: Stack.t()
  def push(stack, value), do: [value | stack]
  @spec pop(Stack.t()) :: Stack.t()
  def pop([]), do: nil
  def pop([_head | tail]), do: tail
  @spec top(Stack.t()) :: Stack.t()
  def top([]), do: nil
  def top([h | _tail]), do: h
  @spec empty_stack :: Stack.t()
  def empty_stack(), do: []
  @spec is_empty(Stack.t()) :: boolean
  def is_empty([]), do: true
  def is_empty(_stack), do: false
end
