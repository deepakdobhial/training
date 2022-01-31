=begin
Given a string s which consists of lowercase or uppercase letters, return the length of the longest
palindrome that can be built with those letters.Letters are case sensitive, for example, "Aa" is not
considered a palindrome here
=end

def longest_palindrome_length(s)
  palind_hash = {}
  len = 0
  s.each_char {|char| palind_hash.store(char, s.count(char))}
  palind_hash.each_value do |value|
    if value % 2 == 0
      len += value
    else
      if value == palind_hash.values.max
        len += value
      else
        len += value - 1
      end
    end
  end

  return len
end

#main
print "Enter String: "
s = gets.chomp!
puts "Longest palindrome length: #{ longest_palindrome_length(s) }"

#output
=begin 
Enter String: aabbbbbbbcccccdddkk
Longest palindrome length: 17

=end