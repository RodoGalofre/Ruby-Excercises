# Metodo de entrada 
def input_data(message)
    puts "Ingrese la palabra"
    palabra = gets.chomp
    message = "¿quieres seguir?"
    calcula_palin(palabra) 
end

# metodo que calcula si la palabra es un palindromo
def calcula_palin(palabra)  
  rever = palabra.reverse
  puts (palabra == rever) ? "la palabra #{palabra.upcase} es un palindromo" :  "#{palabra.upcase} no es palindromo "
  
  validar_seguir()
end  


# Metodo para confirmar si el usuario desea introducir más palabras
def validar_seguir()
  message = "¿quieres saber si tu palabra es un palindromo? "
  puts message
  user_option = gets.chomp
  if user_option == 'si'

    input_data(message)
  else
    puts "See you later "
  end
end



# llamado del metodo de entrada
validar_seguir()