puts "ingrese mumero"
n = gets.to_i

n.downto(1) do |i|
   print "#{i} " if n  % i == 0
end
