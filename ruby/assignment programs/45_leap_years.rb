=begin
Given a range of years as a string, return the number of leap years there are within the range (inclusive).
=end

def leap_years(years)
  start_year = years[0..4].to_i
  end_year = years[5..8].to_i
  no_leap_years = 0
  while start_year <= end_year
    if start_year % 4 == 0 && start_year % 100 !=0 || start_year % 400 == 0
      no_leap_years += 1
    end
    start_year += 1
  end

  return no_leap_years
end

#main
print "Enter range of years in format 1989-2000 : "
str = gets.chomp!
puts "nos of leap year in given range: #{ leap_years(str) }"

#output
=begin
Enter range of years in format 1989-2000 : 2000-2020
nos of leap year in given range: 6

=end