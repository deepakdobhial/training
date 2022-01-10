def reverse_no(n)
    reverse_no=0
    while true
        rem=n%10
        reverse_no=reverse_no*10+rem
        n=n/10
        break if n==0
    end
return reverse_no
end

puts "Enter a number"
n=Integer(gets)
puts "Reverse number #{reverse_no(n)}"

=begin
--------------------------Output--------------------
Enter a number
12963
Reverse number 36921

=end