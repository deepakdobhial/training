def array_of_integers(arr)
  arr1 = []
  arr.each do |element|
    if element.class == Integer
      arr1.push(element)
    end
  end
  return arr1
end

arr=['a','a','a','b',5,'a',6,'e','t',"r",8]
puts "Array of Integers"
print "#{array_of_integers(arr)}\n"


=begin
------------------Output----------------
Array of Integers
[5, 6, 8]

=end