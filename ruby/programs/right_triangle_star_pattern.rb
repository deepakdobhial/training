n=Integer(gets)
i=1
puts "Using While loop"
puts
while i<=n
    puts "* "*i
    i+=1
end
puts
puts "Using for loop"
puts
for i in 1..n
    puts "* "*i
end


#--------------------Output-------------

=begin
Using While loop

* 
* * 
* * * 
* * * * 
* * * * * 
* * * * * * 

Using for loop

* 
* * 
* * * 
* * * * 
* * * * * 
* * * * * * 
=end
