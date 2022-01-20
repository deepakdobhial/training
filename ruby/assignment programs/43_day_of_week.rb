=begin
Write a function that, given a date (in the format MM/DD/YYYY), returns the day of the week as a string.
Each day name must be one of the following strings: "Sunday", "Monday", "Tuesday", "Wednesday",
"Thursday", "Friday", or "Saturday".
=end

require 'date'
def day_of_the_week(date)
  date = Date.strptime(date, '%m/%d/%Y')
  
  return date.strftime('%A')
end

#main
print "Enter date in format MM/DD/YYYY : "
date =gets.chomp!
puts "day of the week: #{ day_of_the_week(date) }"

#output
=begin
Enter date in format MM/DD/YYYY : 07/07/2022
day of the week: Thursday

=end