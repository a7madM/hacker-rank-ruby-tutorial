# problem: https://www.hackerrank.com/challenges/ruby-partial-applications


multiply_function = -> (number) do
    number += 2
   -> (another_number) do
       number * another_number
   end
end

#doubler = multiply_function.(2)
#tripler = multiply_function.(3)

# puts doubler.(4)
# puts tripler.(4)

combination = ->(n) do # calculate n!
    temp = n
    nFactorial = 1
    while temp > 0 do
      nFactorial = nFactorial * temp
      temp -= 1
    end 
    ->(r) do
        diff = n - r
        temp = r
        rFactorial = 1
        while temp > 0 do
            rFactorial = rFactorial * temp
            temp -= 1
        end

        temp = diff
        diffFactorial = 1
        while temp > 0 do
            diffFactorial = diffFactorial * temp
            temp -= 1
        end
        # puts nFactorial
        # puts rFactorial
        # puts diff
        result = nFactorial / (rFactorial * diffFactorial)        
    end
end


n = gets.to_i
r = gets.to_i
if n < r
    puts "Error in Input"
    return
end

nCr = combination.(n)
puts nCr.(r)
