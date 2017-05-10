# problem https://www.hackerrank.com/challenges/ruby-strings-indexing?h_r=next-challenge&h_v=zen

def format_string(input)
     output = String.new(input)
     if output[-1] == '0'
        output[output.length,1] = '0'
    end
    return output
end

def serial_average(input) 
    splitted = input.split('-')
    zz = splitted[0]
    xx = splitted[1].to_f
    yy = splitted[2].to_f

    average =  (xx + yy) / 2
    
    average = average.round(2).to_s
    average = format_string(average)
    
    output = zz + '-' + average
    
    return output
end





p serial_average('002-10.00-20.00')