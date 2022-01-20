=begin
Given the parameters day, month and year, return whether that date is a valid date.
is_valid_date(35, 2, 2020) ➞ false
# February doesn't have 35 days.
=end

require 'date'
def is_valid_date(day, month, year)
  if Date.valid_date?(year, month, day)
    
    return true
  else
    
    return false
  end
end

print "Enter day : "
day = Integer(gets)
print "Enter month : "
month = Integer(gets)
print "Enter year : "
year = Integer(gets)
puts "Is valid date? : #{ is_valid_date(day, month, year) }"

#output
=begin
Enter day : 07
Enter month : 13
Enter year : 2022
Is valid date? : false

=end