=begin
If today was Monday, in two days, it would be Wednesday.
Create a function that takes in an array of days as input and the number of days to increment by. Return an
array of days after n number of days has passed.
after_n_days(["Thursday", "Monday"], 4) ➞ ["Monday", "Friday"]
=end

def after_n_days(arr_of_days, n)
  arr = []
  days_in_week = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
  arr_of_days.each do |day|
    index = days_in_week.index(day)
    index += n
    while true
      if index < 7
        arr.push(days_in_week[index])
       	break
      else
	      index -= 7
	      next
      end  	
    end
  end

  return arr
end

#main
arr_of_days = ["Thursday", "Monday"]
print "Enter no of days to increment : "
n = Integer(gets)
puts "Days after n number of days passed: #{ after_n_days(arr_of_days, n) }"

#Output
=begin
Enter no of days to increment : 4
Days after n number of days passed: ["Monday", "Friday"]

=end
