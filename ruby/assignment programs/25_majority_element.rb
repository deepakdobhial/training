# Given an array nums of size n, return the majority element. The majority element is the element that
# appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array

# count funtion
def count_element(arr, element)
  count = 0
  arr.each do |ele|
    if element == ele
      count += 1
    end
  end

  return count
end

# Find majority element    
def majority_element(arr)
  majority_ele = nil
  arr.each do |element|
    count_ele = count_element(arr, element)
    if count_ele > (arr.length) / 2 
      majority_ele = element
      break
    end
  end

  return majority_ele
end

# main
arr = ['a', 1, 1, 'a', 'a', 1, 1, 1]
puts "majority element : #{ majority_element(arr) }"

#output
=begin
majority element : 1

=end
