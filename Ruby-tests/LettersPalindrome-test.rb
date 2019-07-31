require 'minitest/autorun'
require './LettersPalindrome'
require 'minitest/spec'

describe LettersPalindrome, 'Palindrome tests' do

  it "is a palindrome " do
    palind = LettersPalindrome.new('reconocer')
    palind.palindrome?.must_equal (true)
  end
    
  it "isn't a palindrome " do
    palind = LettersPalindrome.new('another')
    palind.palindrome?.must_equal (false)
  end
  it "error is not palindrome" do
    err = lambda {palind = LettersPalindrome.new(432)}.must_raise (TypeError)
    err.message.must_match('That is not a word')
  end

end