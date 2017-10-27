class Bottles

  def verse(i)
    "#{plural_bottles(i)} of beer on the wall, #{plural_bottles(i)} of beer.\n" +
    "Take #{removable_bottles(i)} down and pass it around, #{plural_bottles(i-1)} of beer on the wall.\n"
  end

  private

  def plural_bottles(i)
    case i
    when 1
      "1 bottle"
    when 0
      "no more bottles"
    else
      "#{i} bottles"
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