
def even_odd(number)
  unless number.is_a? Numeric
    "A Number was not entered"
  end 
    if number % 2 == 0
      "that is an even number"
    else 
      "that is an odd number"
    end
end


str = "ruby"
num_value = str.chars.map { |char| char.ord }.join.to_i
puts num_value
  puts(str,num_value,20)
  puts even_odd(20)
  puts even_odd(str)
  puts even_odd(num_value)
