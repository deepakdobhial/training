#Write a function which takes year and returns how many Saturday 14ths there are in a given year

require 'date'
def saturday_fourteenth(year)
  count = 0
  1.upto(12) do |month|
    date = Date.new(year, month, 14)
    count += 1 if date.saturday?
  end

  return count
end

#main
print "Enter Year : "
year = Integer(gets)
puts "Saturday fourteenth in given year: #{ saturday_fourteenth(year)} "

# output
=begin
Enter Year : 2024
Saturday fourteenth in given year: 2 

=end