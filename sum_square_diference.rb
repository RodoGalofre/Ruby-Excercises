def square_diferences(rango)
  sum_square, square_of_the_sum, diference = 0,0,0
  mayorsq, mayorsqs = [],[]
  (1..rango).each { |i| 
    sum_square += i**2
    mayorsq << sum_square
    (square_of_the_sum += i)**4
    mayorsqs << square_of_the_sum**2
  }
   diference = mayorsqs.max - mayorsq.max 
end
   

puts square_diferences(100)