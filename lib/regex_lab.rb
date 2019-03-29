def starts_with_a_vowel?(word)
  word.match(/^[aeiou]\w*/i) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un.+?ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z].+\W$/) ? true : false
end

def valid_phone_number?(phone)
  phone.scan(/\b\(?\d{3}[\s\W)]?\d{3}[\s\W]?\d{4}\b/) ? true : false
end

# valid_numbers = ["24388945461", "(718)891-1313", "234 435 9978", "(800)4261134"]
#
# p valid_numbers.all? do |i|
#   valid_phone_number?(i)
# end

phone_regex = %r{

  \W       # first optional paren
  \d{3}     # area code
  [\s\W)]?  # second optional paren or space
  \d{3}     # exchange
  [\s\W]?   # separating chars
  \d{4}     # last 4 digits
  \b
}x

p "2438894546 (718)891-1313".scan(phone_regex)
