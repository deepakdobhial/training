# Given a string s, return true if s is a good string, or false otherwise. A string s is good if all the characters
# that appear in s have the same number of occurrences (i.e., the same frequency).

def good_string(str, h)
  str.gsub!(' ','')
  str.each_char do |char|
    count_char = str.count char
    h[char] = count_char
  end
  if h.values.max == h.values.min

    return true
  else

    return false
  end
end

# main
print "Enter string : "
str = gets.downcase.chomp!
h = {}
puts "Good String? : #{ good_string(str, h) }"

#output
=begin
Enter string : aaaaccccddddeeee
Good String? : true

=end

