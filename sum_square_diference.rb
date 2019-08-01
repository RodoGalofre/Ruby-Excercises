
class TypeError < StandardError; end
class SumSquares
    def initialize(rang)
      @rang = parse_number(rang)
    end
    def is_a_number_differ_0?(rang)
      rang.to_i > 0 
    end
    def parse_number(rang)
      raise TypeError, 'That isn`t a number' unless is_a_number_differ_0?(rang)
      rang
    end
    def square_diferences
      mayorsq = []
      mayorsqs = []
      square_of_the_sum = 0
      sum_square = 0
      diference = 0
      (1..@rang).each do |i|
        sum_square += i**2
        mayorsq << sum_square
        xpotency = (square_of_the_sum += i)**2
        mayorsqs << xpotency
      end
      mayorsqs.max - mayorsq.max 
    end
end
