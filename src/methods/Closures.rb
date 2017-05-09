# problem: https://www.hackerrank.com/challenges/ruby-closures?h_r=next-challenge&h_v=zen

def block_message_printer()
    message = "Welcome to Block Message Printer"
    if block_given?
        #--------------
        # proc_message_printer(block_message_printer)
        yield(message)
    end
  puts "But in this function/method message is :: #{message}"
end

message = gets
block_message_printer { puts "This message remembers message :: #{message}" }

#####################################################################################

def proc_message_printer(my_proc)
    message = "Welcome to Proc Message Printer"
    #Call my_proc
    my_proc.call(message)
    puts "But in this function/method message is :: #{message}"
end


my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)
    
######################################################################################    
    
def lambda_message_printer(my_lambda)
    message = "Welcome to Lambda Message Printer"
    #_________________________              #Call my_lambda
    my_lambda.()
    puts "But in this function/method message is :: #{message}"
end

my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)    
    
######################################################################################    
