# Given an integer array nums and an integer k, return the number of pairs (i, j) where i < j such that 
# |nums[i] - nums[j]| == k. 
# The value of |x| is defined as:    
# x if x >= 0. 
#  -x if x < 0. 

def nos_of_pairs(nums, k)
  count = 0
  for i in 0...nums.length
    for j in (i + 1)...nums.length
      if (nums[i] - nums[j]).abs == k
        count += 1
      end
    end    
  end

  return count
end

#----------------------Main---------------------
nums = [5, 6, -7, 8, 9, 12, 15, 20, 19]
print "Enter an integer k : "
k = Integer(gets)
puts "Number of pairs (i, j) : #{ nos_of_pairs(nums, k) }"

#----------------------Output---------------------
=begin 

Enter an integer k : 3
Number of pairs (i, j) : 4

=end