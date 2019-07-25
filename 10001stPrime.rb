class TenThousandPrimes
  def show_prime(limit)
    last_prime = 0
    cont = 0
    i = 1
    while cont <= limit
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
        last_prime = i if i > last_prime
        cont += 1
      end
      i += 1
    end
    last_prime
  end
end

thouprint = TenThousandPrimes.new
print "last prime number is ", thouprint.show_prime(10001)
