#Given an unsorted array Arr of size N of positive integers. One number 'A' from set {1, 2, ...N} is missing
#and one number 'B' occurs twice in array. Find these two numbers.

def find_number(arr)
  missing_no_A = nil
  twice_no_B = nil
  arr.each do |element|
    if arr.count(element) == 2
      twice_no_B = element
    elsif
      1.upto(arr.length) do |set_ele|
        if ! arr.include? set_ele
          missing_no_A = set_ele
          break
        end
      end
    end
  end
  
  return missing_no_A, twice_no_B
end

# main
arr = [5, 9, 8, 6, 10, 3, 2, 1, 4, 10]
missing_no_A, no_occur_twice = find_number(arr)
print "Missing No A: #{ missing_no_A } \nNumber occur twice B: #{ no_occur_twice } \n"

#output
=begin
Missing No A: 7 
Number occur twice B: 10

=end

