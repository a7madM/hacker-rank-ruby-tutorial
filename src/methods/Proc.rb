# problem https://www.hackerrank.com/challenges/ruby-procs?h_r=next-challenge&h_v=zen

def square_of_sum (my_array, proc_square, proc_sum)
    sum = proc_sum.call(my_array)
    proc_square.call(sum)
end

proc_square_number = proc { |sum| sum**2 }
proc_sum_array     = proc {

    |my_array|
    sum = 0
    my_array.each{|item|
        sum += item
    }
    
    sum
}
# my_array = gets.split().map(&:to_i)

my_array = [1, 2, 3]

puts square_of_sum(my_array, proc_square_number, proc_sum_array)
