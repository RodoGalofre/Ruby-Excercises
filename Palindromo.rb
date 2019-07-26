class Palindrome
  def initialize(limit)
    @limit = limit
  end
  def last_palindrome
    last_palindrome = 0
    for i in 100..@limit
      for j in 100..@limit
        possible_p = i*j
        palindrome_valid = possible_p.to_s
        if palindrome_valid == possible_p.to_s.reverse &&  palindrome_valid.to_i > last_palindrome.to_i
          last_palindrome = palindrome_valid 
        end
      end
    end
    last_palindrome
  end
end

three_digits = Palindrome.new(1000)
print "palindromo mayor ", three_digits.last_palindrome
