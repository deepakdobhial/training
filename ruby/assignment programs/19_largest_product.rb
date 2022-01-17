# Given an integer array nums, find a contiguous non-empty subarray within the array that has the largest
# product, and return the product. Elements can also be negative numbers.

def largest_product(nums)
  product = nums[0] * nums[1]
  for i in 1...(nums.length - 1)
    if product < nums[i] * nums[i + 1]
      product = nums[i] * nums[i + 1]
    end
  end

  return product
end

#----------------------main-------------------
nums = [2, 3, -2, 4, 5]
puts "Largest product is : #{ largest_product(nums) }"

#----------------Output------------------------
=begin   
Largest product is : 20

=end