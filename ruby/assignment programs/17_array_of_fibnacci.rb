# Write a function which takes an integer (positive) and return an array of Fibonacci number of each index in 
# index position till given number.

def array_of_fibonacci(int)
  arr = []
  for i in 0..int
    if i == 0 or i == 1
      arr.push(i)
    else
      arr.push(arr[i - 1] + arr[i - 2])
    end
  end

  return arr
end

#-----------------------------Main---------------------
print "Enter positive integer :- "
int = Integer(gets)
puts "Array of Fibnacci number of index position :- #{ array_of_fibonacci(int) }"

#-----------------------------Output--------------------
=begin 

Enter positive integer :- 11
Array of Fibnacci number of index position :- [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

=end