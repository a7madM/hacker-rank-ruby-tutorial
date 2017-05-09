#problem: https://www.hackerrank.com/challenges/ruby-curry?h_r=next-challenge&h_v=zen

power_function = -> (x, z) {
    (x) ** z
}

base = gets.to_i
raise_to_power = power_function.curry.(base) #_________________________

power = gets.to_i
puts raise_to_power.(power)
