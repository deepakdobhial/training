=begin
The 2nd of February 2020 is a palindromic date in both dd/mm/yyyy and mm/dd/yyyy format
(02/02/2020). Given a date in dd/mm/yyyy format, return true if the date is palindromic in both date
formats, otherwise return false
=end

def is_palindrome_date(date)
  date.gsub!('/','')
  if date == date.reverse
    return true
  else
    return false
  end
end

print "enter date dd/mm/yyyy : "
date = gets.chomp!
puts "#{ is_palindrome_date(date) }"

#output
=begin
enter date dd/mm/yyyy : 02/02/2020
true

=end
