# Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range
# that is missing from the array.

def missing_number(nums, n)
  missing_hash = {}
  arr = []
  (0..n).each do |number|
    if nums.include? number
      missing_hash[number] = 1
    else 
      missing_hash[number] = 0
    end
  end
  missing_hash.each do |key, value|
    if value == 0
      arr.push(key)
    end
  end

  return arr
end


#main
nums = [1, 7, 5, 9, 10, 12, 15, 18]
print "Enter n : "
n = gets.chomp!.to_i
puts "missing numbers : #{ missing_number(nums, n) }"

#output
=begin
Enter n : 20
missing numbers : [0, 2, 3, 4, 6, 8, 11, 13, 14, 16, 17, 19, 20]

=end