# problem https://www.hackerrank.com/challenges/ruby-methods-keyword-arguments?h_r=next-challenge&h_v=zen
def convert_temp (temperature, input_scale: "In", output_scale: "celsius")
    #puts temperature
    #puts input_scale
    #puts output_scale
    #puts "Celsius".downcase == "Celsius".downcase
    result = 0;
    
    case input_scale.downcase
        when "celsius"
            if output_scale.downcase == "kelvin"
                result =  temperature + 273.15
            elsif output_scale.downcase == "fahrenheit"
                result = (temperature * (9 / 5.0))  +  32.0
            end

        when "kelvin"
            if output_scale.downcase == "celsius"
                result = temperature -  273.15
            elsif output_scale.downcase == "fahrenheit"
                result =  (temperature * (9 / 5.0)) - 459.67
            end

        when "fahrenheit"
            if output_scale.downcase == "celsius"
                result = ( temperature - 32 ) * (5/9.0)
            elsif output_scale.downcase == "kelvin"
                result = (temperature + 459.67) * (5/9.0)
            end
    end
   
   return result
end

result = convert_temp(0, input_scale: "Celsius", output_scale: "kelvin")
puts result
puts "----------"
result = convert_temp(20, input_scale: "Celsius", output_scale: "fahrenheit")
puts result
puts "----------"


result = convert_temp(300, input_scale: "kelvin", output_scale: "fahrenheit")
puts result
puts "----------"

result = convert_temp(32, input_scale: "kelvin", output_scale: "Celsius")
puts result

puts "----------"


result = convert_temp(68, input_scale: "fahrenheit", output_scale: "Celsius")
puts result

puts "----------"


result = convert_temp(60, input_scale: "fahrenheit", output_scale: "kelvin")
puts result

puts "----------"