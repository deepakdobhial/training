# You are given two strings of the same length s and t. In one step you can choose any character of t and
# replace it with another character. Return the minimum number of steps to make t an anagram of s. An
# Anagram of a string is a string that contains the same characters with a different (or the same) ordering.

def anagram(s, t)
  t.each_char do |char|
    if s.include? char
      s.sub!(char, '')
    end
  end

  return s.length
end

#main
print "Enter String s : "
s = gets.chomp!
print "Enter String t : "
t = gets.chomp!
puts "No of step : #{ anagram(s, t) }"

# output
=begin
Enter String s : deepak
Enter String t : dobhal
No of step : 4

=end
