def nos_of_digits(n)
    count=0
    while true
        rem=n%10
        n=n/10
        count+=1
        break if n==0
    end
return count
end

n=Integer(gets)
puts nos_of_digits(n)