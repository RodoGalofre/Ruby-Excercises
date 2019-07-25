

  a = 0
  b = 0
  c = 1
  arr = []
 fibo_pars = []
  (1...100).each do |i| 
    a,b = b,c

    c = a + b
    arr << c if  c % 2 == 0
end

puts arr
