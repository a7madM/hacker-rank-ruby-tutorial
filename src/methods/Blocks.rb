# problem: https://www.hackerrank.com/challenges/ruby-blocks

def factorial(input)
 
   yield(input)

end

n = gets.to_i
puts factorial (n) {
    |a|
    result = 1;
    while n > 0  do
        result *= n 
        n -=1
    end
    result
}