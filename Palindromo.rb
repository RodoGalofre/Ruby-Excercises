puts "Palindromo"

class PalindromoExcersise
def calcular_palindromo_3_cifras()

    palindromo_mayor = 0
    for i in 100..999
        for j in 100..999
            posible_p = i*j
            piec = posible_p.to_s
            if piec == posible_p.to_s.reverse 
                   
                #puts " #{piec} es un palindromo"

                if piec.to_i > palindromo_mayor.to_i
                palindromo_mayor = piec
                end

            # else puts " no es un palindromo "
            end
        end
       #puts " "
    end
    puts "Palindromo mayor = #{palindromo_mayor}"
end

obj = PalindromoExcersise.new
obj.calcular_palindromo_3_cifras()

end

