# Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a
# given target value.
# If target is not found in the array, return [-1, -1].

#create hash using array
def hash_created(nums)
  h = {}
  for i in 0..nums.length
    if ! h.key?(nums[i])
      h[nums[i]] = [i]
    else  
      h[nums[i]] += [i]
    end
  end

  return h
end 

#start and end position 
def start_end_position(nums, target)
  h = hash_created(nums)
  if h.key?(target)
    return h[target]
  else  
    return [-1, -1]
  end
end

#main
nums = [5, 7, 7, 8, 8, 10]
print "Enter target : "
target = gets.chomp!.to_i
puts "Start and End position : #{ start_end_position(nums, target) }"
    
# output 
=begin
Enter target : 8
Start and End position : [3, 4]

=end