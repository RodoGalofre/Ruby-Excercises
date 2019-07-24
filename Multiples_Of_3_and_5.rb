
def multiples_of_number(number1, number2)
    multiples_of_n = [] 
    (1...10).each {|i|  i % number1 == 0 ? multiples_of_n << i :  (i % number2 == 0 ? multiples_of_n << i : nil )}   
     multiples_of_n.reduce :+
end

puts multiples_of_number(3,5) 
