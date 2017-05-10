# problem: https://www.hackerrank.com/challenges/ruby-strings-introduction


def single_quote
    return 'Hello World and others!'
end

def double_quote
  return "Hello World and others!"
end

def here_doc
   text = <<-HERE 
   Hello World and others!
   HERE
   return text
end

p single_quote
p double_quote
p here_doc