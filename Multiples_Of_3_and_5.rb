multiples_of_3 = Proc.new do |n|
n % 3 == 0
end

multiples_of_5 = Proc.new do |n|
    n % 5 == 0
end

puts "ingrese 3 para ver la suma de los multiplos de 3 hasta 1000 o 5  para ver los de 5: "
option = gets
case option.to_i
when 3
    print (1...1000).to_a.select(&multiples_of_3)
when 5
    print (1...1000).to_a.select(&multiples_of_5)
else
   puts "opción incorrecta"
end

