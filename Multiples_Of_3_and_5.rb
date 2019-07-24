
def multiples_of_number(number1, number2)
    multiples_of_n = [] 
    (1...1000).each { |i|  
    if i % number1 == 0 
      multiples_of_n << i 
    elsif  i % number2 == 0 
      multiples_of_n << i 
    end
    }   
    multiples_of_n.reduce :+
end

puts multiples_of_number(3,5) 
