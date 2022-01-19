# Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

def non_repeating_char(str)
  index_num = nil
  flag = false
  str.each_char do |char|
    if str.count(char) == 1
      index_num = str.index(char)
      flag = true
      break
    end
  end
  if flag == true
    
    return index_num
  else
    
    return -1
  end
end

#main
print "Enter String :"
str = gets.chomp!
puts "index number of first non-repeating character  : #{ non_repeating_char(str) }"

#output
=begin   
Enter String :aabbccddeef
index number of first non-repeating character  : 10

=end
