class Bottles
  def song
    verses(99, 0)
  end

  def verses(last_verse, first_verse)
    (first_verse..last_verse).map { |n| verse(n) }.reverse.join("\n")
  end
  def verse(n)
    first_line(n) + second_line(n)
  end

  private

  def first_line(n)
    if n > 0
      "#{n} #{grammatical_number(n)} of milk on the wall, #{n} #{grammatical_number(n)} of milk.\n"
    else
      "No more bottles of milk on the wall, no more bottles of milk.\n"
    end
  end

  def second_line(n)
    if n > 0
      "Take #{to_take_down(n)} down and pass it around, #{remaining_bottles(n)} of milk on the wall.\n"
    else
      "Go to the store and buy some more, 99 bottles of milk on the wall.\n"
    end
  end

  def grammatical_number(n)
    if n > 1
      "bottles"
    else
      "bottle"
    end
  end

  def to_take_down(n)
    if n == 1
      "it"
    else
      "one"
    end
  end

  def remaining_bottles(n)
    if n == 1
      "no more bottles"
    else
     "#{n-1} #{grammatical_number(n-1)}"
    end
  end
end
