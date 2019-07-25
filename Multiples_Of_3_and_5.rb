class Mult
  def initialize(number1,number2)
    @number1 = number1
    @number2 = number2
  end
  def multiples_of_number
      multiples_of_n = [] 
      (1...1000).each do |i|  
        if i % @number1 == 0 
          multiples_of_n << i 
        elsif  i % @number2 == 0 
          multiples_of_n << i 
        end
      end   
      multiples_of_n.reduce :+
  end
end

three_five = Mult.new(3,5)
puts three_five.multiples_of_number
