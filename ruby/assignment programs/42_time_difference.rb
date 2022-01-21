# Create a function that takes time1 and time2 and return how many hours and minutes have passed
# between the two times.

def time_difference(time1, time2)
  time1.gsub!(':','')
  time2.gsub!(':','')
  hours = time2[0..1].to_i- time1[0..1].to_i 
  minutes = time2[2..3].to_i - time1[2..3].to_i
  if minutes >= 60
    hours += 1
    minutes -= 1
  end

  return hours.to_s + ':' + minutes.abs.to_s

end

#main 
print "Enter time 1 : "
time1 = gets.chomp!
print "Enter time 2 : "
time2 = gets.chomp!
puts "Time difference : #{ time_difference(time1, time2) }"

#output
=begin 
Enter time 1 : 12:30
Enter time 2 : 14:00
Time difference : 2:30

=end
