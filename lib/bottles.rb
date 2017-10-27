class Bottles

  def song
    verses(99,0)
  end

  def verses(index_start, index_end)
    verse_numbers_array(index_start, index_end).map{ |i|
      verse(i)
    }.join("\n")
  end

  def verse(i)
    "#{how_many_bottles(i, capitalise: true, locate: true)}, #{how_many_bottles(i)}.\n" +
      "#{remove_a_bottle(i)}\n"
  end

  private

  def verse_numbers_array(index_start, index_end)
    (index_end..index_start).to_a.reverse
  end

  def how_many_bottles(i, capitalise: false, locate: false)
    "#{count_or_no_more(i, capitalise)} #{pluralise_bottles(i)} of beer#{beer_location(locate)}"
  end

  def count_or_no_more(i, capitalise)
    if i == 0
      no_more(capitalise)
    else
      i
    end
  end

  def no_more(capitalise)
    if capitalise
      "No more"
    else
      "no more"
    end
  end

  def pluralise_bottles(i)
    if i == 1
      "bottle"
    else
      "bottles"
    end
  end

  def beer_location(locate)
    if locate
      " on the wall"
    end
  end

  def remove_a_bottle(i)
    if i == 0
      "Go to the store and buy some more, #{how_many_bottles(99, locate: true)}."
    else
      "Take #{removable_bottles_description(i)} down and pass it around, #{how_many_bottles(i-1, locate: true)}."
    end
  end

  def removable_bottles_description(i)
    if i > 1
      'one'
    else
      'it'
    end
  end

end