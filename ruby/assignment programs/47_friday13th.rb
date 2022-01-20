=begin
Given the month and year as numbers, return whether that month contains a Friday 13th
=end

require 'date'
def friday_thirteenth(year, month)
  flag = false
  date = Date.new(year, month, 13)
  flag = true if date.friday?
   
  return flag
end

print "Enter Year : "
year = Integer(gets)
print "Enter month :"
month = Integer(gets)
puts "Is month contains a Friday 13th? : #{ friday_thirteenth(year, month) } "

#output
=begin
Enter Year : 2018
Enter month :4
Is month contains a Friday 13th? : true 

=end