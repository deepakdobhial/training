# A pangram is a sentence where every letter of the English alphabet appears at least once.
# Given a string sentence containing only lowercase English letters, return true if sentence is a pangram, or
# false otherwise.

def pangram_sentence(str, h)
  str.each_char do |char|
    count_char = str.count char
    h[char] = count_char
  end
  if h.any? { |key, value| value == nil }

    return false
  else

    return true
  end
end

# main
print "Enter string : "
str = gets.downcase.chomp!
h = {}
('a'..'z').each { |alphabet| h.store(alphabet, nil) }
puts "Pangram sentence : #{ pangram_sentence(str, h) }"

#output
=begin
Enter string : The quick brown fox jumps over a lazy dog.
Pangram sentence : true

=end

