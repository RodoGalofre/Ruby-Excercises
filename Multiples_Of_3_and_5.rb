# procedimientos 
multiples_of_3 = Proc.new do |n|
n % 3 == 0
end

multiples_of_5 = Proc.new do |n|
    n % 5 == 0
end
# entrada principal
puts "enter 3 or 5 to see your multiples up to 1000: "
option = gets.chomp
case option.to_i
when 3
    print (1...1000).to_a.select(&multiples_of_3)
when 5
    print (1...1000).to_a.select(&multiples_of_5)
else
   puts "wrong option"
end

