# Given an n-digit large number in form of string, check whether it is divisible by 7 or not. Print 1 if divisible
# by 7, otherwise 0.

def divisible_by_7(str)
  if str.to_i % 7 == 0
    return 1
  else
    return 0
  end
end

# main
print "Enter n-digit large number : "
str = gets.chomp!
puts "#{ divisible_by_7(str) }"

#output
=begin 
Enter n-digit large number : 959959
1

=end
