# problem: https://www.hackerrank.com/challenges/ruby-lazy?h_r=next-challenge&h_v=zen
require 'prime'


is_palindrome = -> i { i.to_s == i.to_s.reverse }

so_lazy = -> (number) do 
    Prime.lazy.select(&is_palindrome).take(number).to_a 
end

number = gets.to_i
p so_lazy.(number)
