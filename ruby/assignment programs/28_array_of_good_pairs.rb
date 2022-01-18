# Given an array of integers nums, return the number of good pairs.
# A pair (i, j) is called good if nums[i] == nums[j] and i < j

def array_good_pairs(nums)
  count = 0
  for i in 0...(nums.length)
    for j in (i + 1)...(nums.length)
      count += 1 if nums[i] == nums[j]
    end    
  end

  return count
end

#-------------------------Main----------------------
nums = [5, 6, -7, -8, -9, 5, 6, 5, -8, -5, 6, -8]
puts "number of good pairs :- #{ array_good_pairs(nums) }"

=begin
-----------------------Output--------------------------
number of good pairs :- 9
------------------------------------------------------- 
=end