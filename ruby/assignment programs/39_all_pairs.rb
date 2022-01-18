# Given two unsorted arrays A of size N and B of size M of distinct elements, the task is to find all pairs from
# both arrays whose sum is equal to X.

def pairs(arr_A, arr_B, x)
  arr_pairs = []
  arr_A.each do |ele_A|
    arr_B.each do |ele_B|
      if ele_A + ele_B == x
        arr_pairs.push([ele_A, ele_B])
      end
    end
  end

  return arr_pairs
end

#main
arr_A = [5, 1, 2, 4, 3]
arr_B = [1, 5, 4, 2, 3, 9]
print "Enter x: "
x = Integer(gets)
puts "pairs : #{ pairs(arr_A, arr_B, x) }"

# output
=begin
Enter x: 5
pairs : [[1, 4], [2, 3], [4, 1], [3, 2]]

=end
