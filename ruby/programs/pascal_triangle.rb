n=Integer(gets)
j=n-1
for i in 1..(n+(n-1))
    if i<=n
        puts "* "*i
    else
        puts "* "*j
        j-=1
    end
end


#----------------------output---------------------------

=begin

n=11

* 
* * 
* * * 
* * * * 
* * * * * 
* * * * * * 
* * * * * * * 
* * * * * * * * 
* * * * * * * * * 
* * * * * * * * * * 
* * * * * * * * * * * 
* * * * * * * * * * 
* * * * * * * * * 
* * * * * * * * 
* * * * * * * 
* * * * * * 
* * * * * 
* * * * 
* * * 
* * 
* 

=end