
def multiples_of_number(number1, number2)
    multiples_of_three = [] #Arrays para guardar los multiplos de 3
    multiples_of_five = [] #Arrays para guardar los multiplos de 5
    (1...1000).each {|i| multiples_of_three << i if i % number1 == 0 } # Rango de 1 a mil saca los multiplos de 3
    (1...1000).each {|i| multiples_of_five << i if i % number2 == 0 } # Rango de 1 a mil saca los multiplos de 5
    return multiples_of_three, multiples_of_five # se devuleven los arrays con los multiplos
end

puts multiples_of_number(3,5) # se imprimen los multiplos de 3 y 5
