class TypeError < StandardError; end
class LettersPalindrome
  def initialize(word)
    @word = parse_word(word)
  end
  def is_a_word?(word)
    word.to_s != word.to_i.to_s
  end
  def parse_word(word)
    raise TypeError, 'That is not a word' unless is_a_word?(word)
    word
  end
  def palindrome?
    @word.reverse == @word
  end
end
