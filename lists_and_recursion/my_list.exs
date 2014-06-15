defmodule MyList do

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def mapsum(list, fun), do: _mapsum(list, fun, 0)

  defp _mapsum([], _, acc), do: acc
  defp _mapsum([head | tail], fun, acc), do: _mapsum(tail, fun, acc + fun.(head))


  def max([head | tail]), do: _max(tail, head)

  defp _max([], current), do: current
  defp _max([head | tail], current) when head > current, do: _max(tail, head)
  defp _max([_ | tail], current), do: _max(tail, current)

  def caesar([], _), do: []
  def caesar([head | tail], n) when (head + n) > ?z, do: [(head + n - 26) | caesar(tail, n)]
  def caesar([head | tail], n), do: [head + n | caesar(tail, n)]

  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from + 1, to)]
end
