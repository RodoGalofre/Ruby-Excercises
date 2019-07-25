class FigonacciSums
  def sum_fibonacci_even(target)
    prev_num = 0
    next_num = 0
    fib_num = 1
    fibo_pars = []
    while fib_num <= target
      prev_num, next_num = next_num, fib_num 
      fib_num = prev_num + next_num
      fib_num % 2 == 0 ?  fibo_pars << fib_num : nil
    end
    fibo_pars.reduce :+
  end
end

sums = FigonacciSums.new
puts sums.sum_fibonacci_even(4000000)