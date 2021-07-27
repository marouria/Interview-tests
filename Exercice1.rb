def encryption(string)
  array = string.chars.permutation(1).to_a.map.with_index do |character, index|
    if character.first.match?(/[[:alpha:]]/) && index.odd?
      character.first.succ.downcase
    elsif character.first.match?(/[[:alpha:]]/) && index.even?
      character.first.succ
    elsif character.first.match?(/[[:digit:]]/)
      9 - character.first.to_i
    else character.first
    end
  end

  array.reverse.join
end

p "$$$$$$$$$$$$$$$$$"
p encryption("BORN IN 2015!")
