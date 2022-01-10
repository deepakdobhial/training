def fact(n)
    # n+=1
    # puts n
    if n==0 or n==1
        return 1
    else
        (n-1).step 1,-1 do |i|
            n*=i
        end
    end
return n
end

n=Integer(gets)
puts fact(n)
# puts n
=begin
-------------------------Output---------------------
n=5
120
=end