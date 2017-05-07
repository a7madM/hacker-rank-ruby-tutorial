#problem: https://www.hackerrank.com/challenges/ruby-methods-introduction
    
def prime (n)
    if n <= 1
        return false
    elsif n <= 3
        return true
    elsif n % 2 == 0 or n % 3 == 0
        return false
    end
    i = 5
    
    while i * i <= n do
        if n % i == 0 or n % (i + 2) == 0
            return false
        i = i + 6
        end
    end
    return true
end

puts prime(3)
puts prime(4)
puts prime(10)
puts prime(7)
puts prime(13)