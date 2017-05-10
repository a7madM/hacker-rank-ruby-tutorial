# problem https://www.hackerrank.com/challenges/ruby-strings-iteration?h_r=next-challenge&h_v=zen 

def count_multibyte_char(input)
    output = 0
    input.each_char { |b| 
        if b.to_s.bytesize > 1
            output += 1
        end
        #p " #{b} With Size  #{b.to_s.bytesize} "
    }

    return output
end

p count_multibyte_char('¥1000')