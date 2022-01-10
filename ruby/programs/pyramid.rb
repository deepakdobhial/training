n=Integer(gets)
i=1
j=n-1
puts "Using while loop"
puts
while i<=n
    puts " "*j+"* "*i
    j-=1
    i+=1
end

#------------------Output----------------------
=begin

Using while loop

    * 
   * * 
  * * * 
 * * * * 
* * * * * 
=end