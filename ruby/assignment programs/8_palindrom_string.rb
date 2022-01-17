#A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all
# non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include
# letters and numbers. Given a string s, return true if it is a palindrome, or false otherwise

#----------------------Reverse a String-------------------------
def reverse_string(str)
  reverse_str = ""
  if str.length == 0
    reverse_str += str
  else
    for i in 1..str.length
      reverse_str += str[-i]
    end
  end

  return reverse_str
end

#-----------------------palindrom string---------------------------
def is_palindrom_string(s)
  s.downcase!
  s.gsub!(/[^a-z]/, "")
  flag = false
  if s == reverse_string(s)
    flag = true
  end

  return flag
end

#-----------------------Main----------------------------------------
print "Enter string s :- "
s = gets.chomp
puts "s is palindrome :- #{ is_palindrom_string(s) }"

=begin
  ---------------------------Output-----------------------------------
Enter string s :- Mr. Owl ate my metal worm                             
s is palindrome :- true
----------------------------------------------------------------------
=end
