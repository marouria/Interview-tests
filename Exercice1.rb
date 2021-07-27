def encryption_with_permutation(string)
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

def encryption_without_permutation(string)
  array = string.chars.map.with_index do |character, index|
    if character.match?(/[[:alpha:]]/) && index.odd?
      character.succ.downcase
    elsif character.match?(/[[:alpha:]]/) && index.even?
      character.succ
    elsif character.match?(/[[:digit:]]/)
      9 - character.to_i
    else character
    end
  end
  array.reverse.join
end

p "$$$$$$$$$$$$$$$$$"
p encryption_with_permutation("BORN IN 2015!")
p "$$$$$$$$$$$$$$$$$"
p encryption_without_permutation("BORN IN 2015!")
