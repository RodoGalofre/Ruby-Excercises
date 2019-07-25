class FigonacciSums
  def initialize(target)
    @target = target
  end
  def sum_fibonacci_even
    prev_num = 0
    next_num = 0
    fib_num = 1
    fibo_pars = []
    while fib_num <= @target
      prev_num, next_num = next_num, fib_num
      fib_num = prev_num + next_num
      fibo_pars << fib_num  if fib_num % 2 == 0
    end
    fibo_pars.reduce :+
  end
end

sums = FigonacciSums.new(4000000)
puts sums.sum_fibonacci_even