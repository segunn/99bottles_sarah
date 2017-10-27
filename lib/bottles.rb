class Bottles

  def verse(i)
    "#{plural_bottles(i)} of beer on the wall, #{plural_bottles(i)} of beer.\n" +
    "Take one down and pass it around, #{plural_bottles(i-1)} of beer on the wall.\n"
  end

  private

  def plural_bottles(i)
    if i > 1
      "#{i} bottles"
    else
      "#{i} bottle"
    end
  end

end