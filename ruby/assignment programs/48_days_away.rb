=begin
Given a date, return how many days date is away from 2023 (end date not included). date will be in
mm/dd/yyyy format.
=end

require 'date'
def days_away(date1)
  date2 = '01/01/2023'
  date1 = Date.strptime(date1, '%m/%d/%Y')
  date2 = Date.strptime(date2, '%m/%d/%Y')
  nos_of_days = (date2 - date1).to_i

  return nos_of_days
end

#main
print "Enter Date in format mm/dd/yyyy: "
date1 = gets.chomp!
puts "nos of days away from 2023: #{days_away(date1)} days"

#output
=begin
Enter Date in format mm/dd/yyyy: 01/01/2022
nos of days away from 2023: 365 days

=end