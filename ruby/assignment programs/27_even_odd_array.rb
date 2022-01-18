# Given an integer array nums, move all the even integers at the beginning of the array followed by all the
# odd integers. Return any array that satisfies this condition

def even_odd_array(arr)
  even_arr = []
  odd_arr = []
  arr.each do |element|
    if element % 2 == 0
      even_arr.push(element)
    else
      odd_arr.push(element)
    end
  end

  return even_arr + odd_arr
end

#main
arr = [1, 5, 4, 3, 6, 7, 8, 9, 12, 55, 16]
puts "Sorted even odd array: #{ even_odd_array(arr) }"

#output

=begin
Sorted even odd array: [4, 6, 8, 12, 16, 1, 5, 3, 7, 9, 55]

=end