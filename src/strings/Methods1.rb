# problem https://www.hackerrank.com/challenges/ruby-strings-methods-i?h_r=next-challenge&h_v=zen

def process_text(input_array) 
    output = String.new;
        input_array.each { |str| str = str.strip
        output += " " + str
    }
    return output.strip
end

p process_text(["Hi, \n", " Are you having fun?    "])
