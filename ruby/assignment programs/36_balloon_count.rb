=begin
Given a string text, you want to use the characters of text to form as many instances of the word "balloon"
as possible. You can use each character in text at most once. Return the maximum number of instances
that can be formed.
Example: loonballxballpoon
You can create only 2 balloon from example text, so return 2
=end

def count_instance_of_word(text, word)
  arr = []
  text.each_char do |char|
    if 'balloon'.include? char
        count_char = text.count(char)
      if word[char] < count_char
        arr.push(count_char / word[char])
      end
    end
  end
  
   return arr.min
  end

# main
text = "loonballxballpoonmbaoolln"
word = {'b'=>1, 'a'=>1, 'l'=>2, 'o'=>2, 'n'=>1 }
puts "numbers of instances possible : #{ count_instance_of_word(text,word) }"

#output
=begin 
numbers of instances possible : 3

=end
