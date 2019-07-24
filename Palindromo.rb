def calcular_palindromo_3_cifras()
  last_palindrome = 0
  for i in 100..999
   for j in 100..999
    posible_p = i*j
    palindrome_valid = posible_p.to_s
    palindrome_valid == posible_p.to_s.reverse ? (last_palindrome = palindrome_valid if palindrome_valid.to_i > last_palindrome.to_i) : nil
   end
  end
  last_palindrome
end
print "palindromo mayor ",calcular_palindromo_3_cifras()

