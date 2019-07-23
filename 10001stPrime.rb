
   
# inicio
    @last_prime = 0
    @cont = 0
    @i = 1
    # counter up to 10001
while @cont <= 10001
        count = 2
        prime_validator = true 
   # comienzo desde prime validator
   
  # dentro del primer while desde de prime validator = true hasta if prime validator  
  while prime_validator && count < @i
    if @i % count == 0
        prime_validator = false
    else
        count = count + 1
    end
  end
   # inicio validation 2
    if prime_validator 
        if @i > @last_prime
            @last_prime = @i
            @cont += 1
        end
    end
    @i += 1
end
print "\n\n  The 10001st prime is: ", @last_prime , "\n\n"

#fin