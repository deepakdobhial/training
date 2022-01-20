# You are given an array of strings nums and an
# integer k. Each string in nums represents an integer without leading zeros.
# Return the string that represents the kth largest integer in nums.

#sorted array
def sorted_nums(nums)
  start_index = 0
  last_index = -1
  mid_index = (nums.length) / 2
  for i in 0...nums.length
    if nums[start_index].to_i > nums[mid_index].to_i
        nums[start_index], nums[mid_index] = nums[mid_index], nums[start_index]
        start_index += 1
    elsif nums[last_index].to_i < nums[mid_index].to_i
        nums[mid_index], nums[last_index] = nums[last_index], nums[mid_index]
        last_index -=1
    end
  end
  
  return nums
end

# Largest kth Integer Function
def kth_largest_integer(nums, k)
  nums = sorted_nums(nums)

  return nums[k - 1]
end

# main
nums = ['111', '333', '222', '444', '111', '1']
print "Enter positive integer k: "
k = gets.chomp!.to_i
puts "#{ k }th largest number: #{ kth_largest_integer(nums, k) }"

# output
=begin 
Enter k: 5
5th largest number: 333

=end

