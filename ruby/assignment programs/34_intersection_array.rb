# Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the
# result must be unique and you may return the result in any order.

def intersection_array(num1, num2)
  inter_arr = []
  num1.each do |element_num_1|
    num2.each do |element_num_2|
      if (element_num_1 == element_num_2) && (! inter_arr.include? element_num_1)
        inter_arr.push(element_num_1)
      end
    end
  end

  return inter_arr
end

#main
num1 = [5, 6, 5, 7, 7, 8, 8, 9, 10]
num2 = [6, 7, 5, 5, 5, 8, 9, 10, 10]
puts "Intersection of arrays : #{ intersection_array(num1, num2) }"

#output
=begin   
Intersection of arrays : [5, 6, 7, 8, 9, 10]

=end
