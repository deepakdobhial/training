# Create a function that takes an array and returns a new array containing only prime numbers.

def prime_array(arr)
  prime_arr = [] 
  flag = true
  arr.each do |element|
    if element.class == Integer && element > 1
      if element == 2 
        flag = true
      else
        for i in 2...element
          if element % i != 0
            flag = true
            next
          else
            flag = false
            break
          end
        end
      end
      if flag == true
        prime_arr.push(element)
      end  
    end
  end
  
  return prime_arr
end

#------------------------Main------------------
arr = [1, 2, 4, 15, 7, 8, 11, 13, 'b', 'a', 73, 79, 97, 105, 277]
puts "Array of prime numbers : #{ prime_array(arr) }"

#------------------output----------------------
=begin
Array of prime numbers : [2, 7, 11, 13, 73, 79, 97, 277]  
  
=end