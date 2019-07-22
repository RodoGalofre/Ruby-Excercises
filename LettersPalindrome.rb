# metodo que calcula si la word es un palindromo
def calculate_palindrome(word)  
    rever = word.reverse
    puts (word == rever) ? "word #{word.upcase} is a palindrome" :  "#{word.upcase} is not a palindrome"
    validate_keep_on()
end  

@message = "do you want to know if your word is a palindrome?  "

# Metodo de entrada 
def input_data(message)
    puts "type word"
    word = gets.chomp
    @message = "Do you want to go on? "
    calculate_palindrome(word) 
end

  
# Metodo para confirmar si el usuario desea introducir más palabras
def validate_keep_on()
    puts @message
    user_option = gets.chomp
    if user_option == 'yes'
  
      input_data(@message)
    else
      puts "See you later "
    end
end
  


# llamado del metodo de entrada
validate_keep_on()