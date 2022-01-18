# Write a function that takes an integer (less than 1000) and return an array of primes till that number.

def array_of_prime_nos(limit)
  arr = []
  flag = true
  for i in 2..limit
    if i == 2
      flag = true
    else
      for j in 2...i
        if i % j != 0
          flag = true
          next
        else
          flag = false
          break
        end
      end
    end
    if flag == true
      arr.push(i)
    end  
  end

  return arr
end

#---------------------------Main-----------------
print "Enter limit : "
limit = Integer(gets)
if limit < 1000
  puts "Array of prime numbers #{ array_of_prime_nos(limit) }"
else
  puts "Enter limit less than 1000"
end

# --------------------------Output----------------
=begin
Enter limit : 100
Array of prime numbers [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]  

=end


