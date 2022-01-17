# Given an array nums. We define a running sum of an array as running Sum[i] = sum( nums[0]...nums[i]). 
# Return the running sum of nums.

def running_sum_array(nums)
  running_sum = []
  for i in 0...nums.length
    if i == 0
      running_sum.push(nums[i])
    else
      running_sum.push(running_sum[i - 1] + nums[i])
    end
  end
  
  return running_sum
end

#------------------------main--------------------------------
nums = [1, 2, 3, 4, 5, 8]
puts "Running sum of nums array : #{ running_sum_array(nums) }"

#-------------------------output------------------------------
=begin
Running sum of nums array : [1, 3, 6, 10, 15, 23]

=end