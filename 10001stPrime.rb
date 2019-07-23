last_prime, cont, i = 0,0,1
while cont <= 10001
  count = 2
  prime_validator = true  
    while prime_validator && count < i
      if i % count == 0
        prime_validator = false
      else
        count = count + 1
      end
    end
      if prime_validator 
        if i > last_prime
          last_prime = i
          cont += 1
        end
    end
    i += 1
end
print "\n\n  The 10001st prime is: ", last_prime , "\n\n"