# age = rand(20..200)
# puts "Teddy is #{age} years old!"


# CONST = 10.7639
# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_f

# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_f

# puts "The area of the room is #{(length*width).round(2)} square meters (#{(length*width*CONST).round(2)} square feet)"


# puts "What is the bill?"
# bill = gets.chomp.to_f

# puts "What is the tip percentage?"
# tip = gets.chomp.to_f

# tip_amount = (tip*bill/100).round(2)
# puts "The tip is #{sprintf('%.2f', tip_amount)}"

# puts "The total is #{bill+tip_amount}"

# require 'date'
# puts "What is your age?"
# age = gets.chomp.to_i

# puts "At what age would you like to retire?" 
# retirement_age = gets.chomp.to_i

# current_date = Date.today
# current_year = (current_date).year
# years_to_retirement = retirement_age - age
# retirement_year = current_year + years_to_retirement

# puts "It's #{current_year}. You will retire in #{retirement_year}."
# puts "You have only #{years_to_retirement} years of work to go!"


# puts "What is your name?"
# name = gets.chomp

# name[name.length - 1] == '!' ? (puts "HELLO #{(name.upcase).chop}. WHY ARE WE SCREAMING?") : (puts "Hello #{name}.")

# for i in 1..99
#   if i % 2 == 1
#     puts i 
#     i = i + 1
#   else
#     i = i + 1
#   end
# end

# for i in 1..99
#   if i % 2 == 0
#     puts i 
#     i = i + 1
#   else
#     i = i + 1
#   end
# end


# puts "Please enter an integer greater than 0:"
# num = gets.chomp.to_i

# puts "Enter 's' to compute the sum, 'p' to compute the product"
# opt = gets.chomp

# case opt
# when 's'
#   sum = (1..num).inject(:+)
#   puts "The sum of the integers between 1 and #{num} is #{sum}."
# when 'p'
#   product = (1..num).inject(:*)
#   puts "The product of the integers between 1 and #{num} is #{product}."
# else 
#   "Oops unknown operation!"
# end

def negative(num)
  num <= 0 ? (puts num) : (puts (0-num))
end

negative(5)










