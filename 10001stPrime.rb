class ArgumentError < StandardError; end
class TenThousandPrimes 
  def initialize(limit)
    validate_argument(limit)
    @limit = limit
  end
  def valid_range?(limit)
    limit.is_a?(Integer) && limit >= 0
  end
  def validate_argument(limit)
    raise ArgumentError, 'ERROR INVALID ARGUMENT: Expected 0, negative number or String' unless valid_range?(limit) #true
  end
  def show_prime
    last_prime = 0
    cont = 0
    i = 1
    while cont <= @limit
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
