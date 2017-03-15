# Beer Song
class BookKeeping
  VERSION = 2
end

class BeerSong
  def lyrics
    verses(99, 0)
  end

  def verses(max, min)
    (0..(max - min)).map { |i| verse(max - i) }.join "\n"
  end

  def verse(nb_bootle)
    if nb_bootle.zero?
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif nb_bootle == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{pluralize(nb_bootle, 'bottle', 'bottles')} of beer on the wall, #{pluralize(nb_bootle, 'bottle', 'bottles')} of beer.\n" \
      "Take one down and pass it around, #{pluralize(nb_bootle - 1 , 'bottle', 'bottles')} of beer on the wall.\n"
    end
  end

  private

  def pluralize(nb, singular, plural)
    nb == 1 ? nb.to_s + ' ' + singular : nb.to_s + ' ' + plural
  end
end
