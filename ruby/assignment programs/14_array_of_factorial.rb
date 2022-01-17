# Write a function which takes an integer (positive) and return an array of factorials of each index in index 
# position till given number. 

def array_of_factorial(int)
  arr = []
  j = 1
  for i in 0..int
    if i == 0
      arr.push(j)
    else 
      arr.push(i*j)
      j = arr[i]
    end
  end
  return arr
end

#--------------------main-------------------------
print "Enter positive integer :- "
int = Integer(gets)
puts "Array of factorial :- #{ array_of_factorial(int) }"

#-----------------Output---------------------------
=begin

Enter positive integer :- 6
Array of factorial :- [1, 1, 2, 6, 24, 120, 720]
 
=end