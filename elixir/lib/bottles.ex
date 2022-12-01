defmodule Bottles do
  def song() do
    verses(99, 0)
  end

  def verses(start, stop) do
    start..stop
    |> Enum.map(&verse/1)
    |> Enum.join("\n")
  end

  def verse(n) do
    first_verse(n) <> second_verse(n)
  end

  defp first_verse(n) do
    "#{capitalize(remaining_bottles(n))} #{grammatic_number(n)} of milk on the wall, #{remaining_bottles(n)} #{grammatic_number(n)} of milk.\n"
  end

  defp second_verse(0) do
    "Go to the store and buy some more, 99 bottles of milk on the wall.\n"
  end

  defp second_verse(n) do
    "Take #{to_take_down(n)} down and pass it around, #{remaining_bottles(n - 1)} #{grammatic_number(n - 1)} of milk on the wall.\n"
  end

  defp grammatic_number(n) do
    if n == 1 do
      "bottle"
    else
      "bottles"
    end
  end

  defp capitalize(n) do
    if is_integer(n) do
      n
    else
      String.capitalize(n)
    end
  end

  defp remaining_bottles(n) do
    if n == 0 do
      "no more"
    else
      n
    end
  end

  def to_take_down(n) do
    if n > 1 do
      "one"
    else
      "it"
    end
  end
end
