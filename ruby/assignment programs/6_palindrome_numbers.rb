#Given an integer limit being the upper limit of the range of interest, implement a function that returns the
#last 15 palindromes numbers lower or equal to limit as an array sorted ascendingly.

#-----------------reverse a number -----------------------
def reverse_number(number)
  num = number
  reverse_no = 0
  while num > 0
    rem = num%10
    num = num/10
    reverse_no = reverse_no * 10 + rem
  end

  return reverse_no
end

#--------------------palindromes number -----------------------------
def palindrome_numbers(limit)
  palindrome_arr = Array.new
  for i in 11..limit
    if i == reverse_number(i)
      palindrome_arr.push(i)
    end
  end

  return palindrome_arr[palindrome_arr.length-15..]
end

#-----------------main----------------------
print "Enter limit :- "
limit = Integer(gets)
puts "Palindrome Numbers :- #{ palindrome_numbers(limit) }"

=begin
----------------------Output------------------------------
Enter limit :- 50000
Palindrome Numbers :- [48584, 48684, 48784, 48884, 48984, 49094, 49194, 49294, 49394, 49494, 49594, 49694, 49794, 49894, 49994]
-----------------------------------------------------------
=end