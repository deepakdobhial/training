# Given a String S, reverse the string without reversing its individual words. Words are separated by dots.

def reverse_string_words(s)
  arr = s.split('.')
  arr.each do |element|
    if (element.length) > 1
      i = 0
      j = -1
      while i < (element.length) / 2
        temp = element[i]
        element[i] = element[j]
        element[j] = temp
        i += 1
        j -= 1
      end
    end
  end
  
  return arr.join(".")
end

#main
print "Enter string with (Words are separated by dots): "
s = gets.chomp!
puts "reverse String : #{ reverse_string_words(s) }"

# output 
=begin
Enter string with (Words are separated by dots): hello.world.good.morning
reverse String : olleh.dlrow.doog.gninrom

=end