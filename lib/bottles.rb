class Bottles

  def song
    verses(99,0)
  end

  def verses(index_start, index_end)
    (index_end..index_start).to_a.reverse.map{|i|
      verse(i)
    }.join("\n")
  end

  def verse(i)
    "#{plural_bottles(i, capitalise: true)} of beer on the wall, #{plural_bottles(i)} of beer.\n" +
    "#{remove_a_bottle(i)}\n"
  end

  private

  def plural_bottles(i, capitalise: false)
    case i
    when 1
      "1 bottle"
    when 0
      if capitalise
        "No more bottles"
      else
        "no more bottles"
      end
    else
      "#{i} bottles"
    end
  end

  def remove_a_bottle(i)
    if i == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take #{removable_bottles(i)} down and pass it around, #{plural_bottles(i-1)} of beer on the wall."
    end
  end

  def removable_bottles(i)
    if i > 1
      'one'
    else
      'it'
    end
  end

end