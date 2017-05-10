# problem https://www.hackerrank.com/challenges/ruby-strings-methods-ii?h_r=next-challenge&h_v=zen

def mask_article(text,words_array)
    output = String.new(text)
    words_array.each { |word|
            replace = strike(word)
            output = output.gsub(word, replace)
    }

    return output
end

def strike word
    text = String.new(word)
    text[0,0] = '<strike>'
    text[text.length,0] = '</strike>'
    return text
end

text = "Decisively advantages nor expression unpleasing she led met Joy fond many ham high seen this. Introduced far law gay considered entreaties difficulty."
p mask_article(text, ["unpleasing", "fond" ,"ham", "Introduced", "gay"])