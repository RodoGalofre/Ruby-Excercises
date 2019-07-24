def calcular_palindromo_3_cifras(limit)
  last_palindrome = 0
  for i in 100..limit
    for j in 100..limit
      posible_p = i*j
      palindrome_valid = posible_p.to_s
      if palindrome_valid == posible_p.to_s.reverse 
        if palindrome_valid.to_i > last_palindrome.to_i
          last_palindrome = palindrome_valid 
        end
      end
    end
  end
  last_palindrome
end

print "palindromo mayor ",calcular_palindromo_3_cifras(1000)

