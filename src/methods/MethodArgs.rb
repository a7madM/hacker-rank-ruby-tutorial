# problem: https://www.hackerrank.com/challenges/ruby-methods-argumentss 
def take(arr,len = 1)
    return arr[len,arr.length]
end

print take([1,2,3], 1)
puts ""
print take([1,2,3], 2)
puts ""