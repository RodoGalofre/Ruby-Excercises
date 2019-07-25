class LettersPalindrome
  def initialize(word)
    @word = word
  end
  def palindrome?
    @word.reverse == @word 
  end
end

palind  = LettersPalindrome.new('reconocer')
puts palind.palindrome?


