# Given two strings s and part, perform the following operation on s until all occurrences of the substring
# part are removed:
# Find the leftmost occurrence of the substring part and remove it from s.Return s after removing all
# occurrences of part.
# A substring is a contiguous sequence of characters in a string.

def removing_substring(s, part)
  loop do
    s.slice!(part)
    break if ! s.include? part
  end

  return s
end

#main
print "enter string : "
s = gets.chomp!
print "enter sub-string : "
part = gets.chomp!
puts "string after removing sub-string : #{ removing_substring(s, part) }"

# output
=begin 
enter string : daabcbaabcbc
enter sub-string : abc
string after removing sub-string : dab

=end
