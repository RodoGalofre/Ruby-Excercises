def three_digit_palindrome(limit)
  last_palindrome = 0
  for i in 100..limit
    for j in 100..limit
      possible_p = i*j
      palindrome_valid = possible_p.to_s
      if palindrome_valid == possible_p.to_s.reverse &&  palindrome_valid.to_i > last_palindrome.to_i
          last_palindrome = palindrome_valid 
      end
    end
  end
  last_palindrome
end

print "palindromo mayor ",three_digit_palindrome(1000)

