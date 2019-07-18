a = 0
b = 0
c = 1
for i in 1..100
    a = b
    b = c 
    c = a + b
   
    puts c if  c % 2 == 0
end