# A distinct string is a string that is present only once in an array. Given an array of strings arr, and an integer
# k, return the kth distinct string present in arr. If there are fewer than k distinct strings, return an empty
# string "".

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

# return kth distinct string 
def distinct_strings(arr, k)
  arr1 = []
  arr.each do |element|
    count_ele = count_element(arr, element)
    if count_ele == 1
      arr1.push(element)
    end
  end
  if k <= arr1.length
    return arr1[k - 1]
  else
    return ("")
  end  
end

# main
arr = ['111', '112', '113', '114', '111', '112', '115']
print "Enter k : "
k = Integer(gets)
puts "#{ k }th distinct string : #{ distinct_strings(arr, k) }"

#output
=begin
Enter k : 2
2th distinct string : 114

=end