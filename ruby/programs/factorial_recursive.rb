def fact(n)
    if n==0 or n==1
        return 1
    else
        return n*fact(n-1)
    end
end

n=Integer(gets)
puts fact(n)


=begin
---------------------Output-----------------------
n=5
120
=end
