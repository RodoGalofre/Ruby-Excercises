# metodo que calcula si la palabra es un palindromo
def palindrome?(word)
 word.reverse == word 
end  

puts palindrome?('reconocer')

