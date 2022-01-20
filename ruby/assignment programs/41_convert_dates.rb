=begin
Create a function that converts dates from one of five string formats:
"January 9, 2019" (MM D, YYYY)
"Jan 9, 2019" (MM D, YYYY)
"01/09/2019" (MM/DD/YYYY)
"01-09-2019" (MM-DD-YYYY)
"01.09.2019" (MM.DD.YYYY)
The return value will be an array formatted like: [MM, DD, YYYY], where MM, DD, and YYYY are all integers
=end

require 'date'
def convert_date(date)
  arr = []
  if date.include?(',')
    date = Date.parse(date)
  elsif date.include?('/')
    date = Date.strptime(date, '%m/%d/%Y')
  elsif date.include?('-')
    date = Date.strptime(date, '%m-%d-%Y')
  else
    date = Date.strptime(date, '%m.%d.%Y')
  end  
  arr.push(date.mon, date.mday, date.year)

  return arr
end

#main
dt = ["January 9, 2019", "Jan 9, 2019", "01/09/2019", "01-09-2019", "01.09.2019"]
dt.each do |date|
  puts "#{convert_date(date)}"
end

#output
=begin
[1, 9, 2019]
[1, 9, 2019]
[1, 9, 2019]
[1, 9, 2019]
[1, 9, 2019]

=end