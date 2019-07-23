def fibonacci_pars
  a = 0
  b = 0
  c = 1

  (1...100).each do |i| 
    a = b 
    b = c 
    c = a + b
    return c if  c % 2 == 0
  end
end