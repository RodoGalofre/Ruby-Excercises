class TenThousandPrimes 
  def show_prime(limit)
    last_prime = 0
    cont = 0
    i = 1
    while cont <= limit
      count = 2
      prime_validator = true
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
end
thouprint = TenThousandPrimes.new
print "last prime number is ", thouprint.show_prime(10001)
