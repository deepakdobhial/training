#Given a string s, reverse only all the vowels in the string and return it.
def reverse_vowels(str)
  str1 = str[0...(str.length)/2]
  str2 = str[(str.length)/2..]
  j = -1
  for i in 0...(str1.length)
    if  "aeiouAEIOU".include? str1[i]
      while j >= -(str2.length)
        if "aeiouAEIOU".include? str2[j]
          str[i], str[j] = str[j], str[i]
          break
        end
        j -= 1
      end
      j -= 1
    end
  end
  
  return str
end

# ------------main------------- 
print "Enter string :- "
str = gets.chomp!
print "reverse the vowels :- #{ reverse_vowels(str) } \n"

=begin
-----------------------------------Output---------------------------
Enter string :- AEIOU uoiea
reverse the vowels :- aeiou UOIEA 
--------------------------------------------------------------------
=end