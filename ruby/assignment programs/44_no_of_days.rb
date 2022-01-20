=begin
Create a function that takes the month and year (as integers) and returns the number of days in that
month.
=end

require 'date'
def nos_of_days(year, month)
  date = Date.new(year, month, -1)
  return date.day 
end

#main
print "Enter year: "
year = Integer(gets)
print "Enter month: "
month = Integer(gets)
puts "Nos of day in a givn month: #{nos_of_days(year, month)}"

#output
=begin
Enter year: 2022
Enter month: 1
Nos of day in a givn month: 31

=end