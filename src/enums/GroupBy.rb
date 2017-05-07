
# problem https://www.hackerrank.com/challenges/ruby-enumerable-group-by
marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}

def group_by_marks(marks, pass_marks)
    result = marks.group_by {|name , mark|  mark>pass_marks }

   result = result.inject({}){|option, (k,v) | 
    if k == false    
        option["Failed"] = v
    else 
        option["Passed"] = v
    end;
     option}

    return result 
end

print group_by_marks(marks, 30)
puts 