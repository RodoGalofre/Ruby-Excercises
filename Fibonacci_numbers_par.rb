def sum_fibonacci_even(target)
  prev_num = 0
  next_num = 0
  fib_num = 1
  fibo_pars = []
  (1..100).each do |i| 
    while fib_num <= target
      prev_num, next_num = next_num, fib_num 
      fib_num = prev_num + next_num
      fib_num % 2 == 0 ?  fibo_pars << fib_num : nil
    end
  end
  fibo_pars.reduce :+
end

puts sum_fibonacci_even(4000000)