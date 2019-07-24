def see_prime(limit)
  last_prime, cont, i = 0,0,1
  while cont <= limit
    count, prime_validator = 2, true
    while prime_validator && count < i
     i % count == 0 ? prime_validator = false : count = count + 1  
    end
    if prime_validator 
      (i > last_prime ? last_prime = i : nil )
      cont += 1
    end  
  i += 1
  end
last_prime
end

puts see_prime(10001)