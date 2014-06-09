defmodule Chop do

  def guess(actual, range = low..high) do
    num = div(high + low, 2)
    IO.puts("Is it #{num}")
    _guess(actual, range, num)
  end

  def _guess(actual, _, guess) when actual == guess do
    actual
  end
  def _guess(actual, low..high, guess) when actual > guess do
    guess(actual, guess+1..high)
  end
  def _guess(actual, low..high, guess) when actual < guess do
    guess(actual, low..guess-1)
  end

end
