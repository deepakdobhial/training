# Given a string s and an array of strings words, determine whether s is a prefix string of words.
# A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some
# positive k no larger than words.length. Return true if s is a prefix string of words, or false otherwise.

def is_prefix_string(str, words)
  flag = false
  str1 = ''
  (words.join).each_char do |element|
    str1 << element
    if str1 == str.gsub(' ', '')
      flag = true
      break
    end
  end
  
  return flag
end

#main
print "Enter string : "
s = gets.chomp
words = ["hell", "o", "world", "morning"]
puts "Is s a prefix string? : #{ is_prefix_string(s, words) }"

#output
=begin 
Enter string : hello wo
Is s a prefix string? : true

Enter string : morning hello
Is s a prefix string? : false

=end