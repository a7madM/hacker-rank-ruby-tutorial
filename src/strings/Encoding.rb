# problem: https://www.hackerrank.com/challenges/ruby-strings-encoding?h_r=next-challenge&h_v=zen

def transcode (input)
    # p input
    # p input.encoding
    output = input.force_encoding(Encoding::UTF_8)
    # p input == output
    return output
end

p transcode("R\xC3\xA9sum\xC3\xA9")