#Given two strings s and t, return true if t is an anagram of s, and false otherwise.

def anagram_strings(s, t)
  flag = true
  if s.length != t.length
    flag = false
  else
    t.each_char do |element|
      if s.downcase.include? element.downcase
        next
      else
        flag = false 
        break  
      end
    end
  end

  return flag
end

#---------------main-----------------
print "Enter Ist string s :- "
s=gets.chomp
print "Enter IInd String t :- "
t=gets.chomp
puts "t is an anagram of s :- #{ anagram_strings(s,t) }"

=begin
---------------------output---------------------------
Enter Ist string s :- listen
Enter IInd String t :- silent
t is an anagram of s :- true

Enter Ist string s :- deepak
Enter IInd String t :- dobhal
t is an anagram of s :- false
--------------------------------------------------------
=end
