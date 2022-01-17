# Write a function to return reverse of a string using recursion

def reverse_string_recursion(str)
  if str.length == 0
    return str
  else
    return reverse_string_recursion(str[1..]) + str[0]
  end
end
#-------------------main--------------------------------
print "Enter string :- "
str = gets.chomp!
print "reverse string :- #{ reverse_string_recursion(str) } \n"

=begin
------------------------output---------------------------
Enter string :- abcde
reverse string :- edcba 
---------------------------------------------------------
=end
