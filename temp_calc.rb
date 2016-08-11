measure = ""
require 'colorize'
while measure != 4
puts "If the temperature you would like to convert is in fahrenheit press 1, celsius 2, kelvin 3"
puts "press 4 if you'd like to stop converting temperatures"
measure = gets.chomp.to_i

if measure == 1
puts "What is the temperature in Fahrenheit?"
temp = gets.chomp.to_f

def fcalc(f)
  if f > 32
  puts "The temperature in Celsius is #{((f - 32) * 5/9).round(2)} degrees".red
  puts "The temperature in Kelvin is #{(((f - 32) * 5/9) + 273).round(2)} degrees".red
  puts ""
  else
  puts "The temperature in Celsius is #{((f - 32) * 5/9).round(2)} degrees".blue
  puts "The temperature in Kelvin is #{(((f - 32) * 5/9) + 273).round(2)} degrees".blue
  puts ""
  end
end

if (((temp - 32) * 5/9) + 273) < 0
  puts "error".upcase
  puts ""
  else

fcalc(temp)

end

  elsif measure == 2
  puts "What is the temperature in Celsius?"
  temp = gets.chomp.to_f

def ccalc(c)
  if c > 0
  puts "The temperature in Fahrenheit is #{((c * 9/5) + 32).round(2)} degrees".red
  puts "The temperature in Kelvin is #{(c + 273).round(2)} degrees".red
  puts ""
  else
  puts "The temperature in Fahrenheit is #{((c * 9/5) + 32).round(2)} degrees".blue
  puts "The temperature in Kelvin is #{(c + 273).round(2)} degrees".blue
  puts ""
  end
end

if (temp + 273) < 0
  puts "error".upcase
  puts ""
  else

ccalc(temp)

end

  elsif measure == 3
  puts "What is the temperature in Kelvin?"
  temp = gets.chomp.to_f

def kcalc(k)
  if k > 273
  puts "The temperature in Celsius is #{(k - 273).round(2)} degrees".red
  puts "The temperature in Fahrenheit is #{(((k - 273) * 9/5) + 32).round(2)} degrees".red
  puts ""
  else
  puts "The temperature in Celsius is #{(k - 273).round(2)} degrees".blue
  puts "The temperature in Fahrenheit is #{(((k - 273) * 9/5) + 32).round(2)} degrees".blue
  puts ""
  end
end

if temp <= 0
  puts "error".upcase
  puts ""
  else
kcalc(temp)
end

  else if measure > 4 || measure < 1
  puts "error".upcase
  puts ""
end

end

end