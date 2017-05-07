def full_name(first, *rest)
    return rest.reduce(first) { |o, x| o + ' ' + x }
end

print full_name("Ahmed","Magdy")
puts ""