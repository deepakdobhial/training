# Write a function which takes an array of integers, return how many of them contain an even number of 
#  digits

#------------------numbers of digits in an integers-------------------
def no_of_digits(number)
  count_digits = 0
  num = number
  while num > 0
    rem = num % 10
    num/=10
    count_digits += 1
  end

  return count_digits
end

#--------------------------Even number of digits----------------------
def array_of_even_no_digits(arr)
  arr1 = []
  arr.each do |number|
    count_digits = no_of_digits(number)
    if count_digits % 2 != 0 
      next
    else
      arr1.push(number)
    end  
  end

  return arr1
end

#------------------------main----------------------------------
arr = [1, 12, 123, 1234, 12345, 123456, 1234567, 12345678, 123456789]
puts "Array of even no digits : #{ array_of_even_no_digits(arr) }"

#------------------------Output----------------------------------
=begin
Array of even no digits : [12, 1234, 123456, 12345678]

=end