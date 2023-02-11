arr = []
puts "Enter the 1st number:"
num1 = gets.chomp.to_i
arr.push(num1)

puts "Enter the 2nd number:"
num2 = gets.chomp.to_i
arr.push(num2)

puts "Enter the 3rd number:"
num3 = gets.chomp.to_i
arr.push(num3)

puts "Enter the 4th number:"
num4 = gets.chomp.to_i
arr.push(num4)

puts "Enter the 5th number:"
num5 = gets.chomp.to_i
arr.push(num5)

puts "Enter the last number:"
num6 = gets.chomp.to_i

arr.include?(num6) ? (puts "The number #{num6} appears in #{arr}.") : ((puts "The number #{num6} does not appear in #{arr}."))


puts "Enter the first number:"
num1 = gets.chomp.to_i

puts "Enter the second number:"
num2 = gets.chomp.to_i

puts "#{num1} + #{num2} = #{num1 + num2}"
puts "#{num1} - #{num2} = #{num1 - num2}"
puts "#{num1} * #{num2} = #{num1 * num2}"
puts "#{num1} / #{num2} = #{num1 / num2}"
puts "#{num1} % #{num2} = #{num1 % num2}"
puts "#{num1} ** #{num2} = #{num1 ** num2}"


puts "Please write a word or multiple words:"
str = gets.chomp

count = 0
for i in 0..str.length-1
  if str[i] == " "
    count += 1
  end
end

puts "There are #{str.length - count} characters in \"#{str}\""

def multiply(num1, num2)
  return num1*num2
end

def square(num)
  multiply(num, num)
end

def raised(num, exp)
  result = multiply(num, num)
  for i in 1..exp-2
    result = multiply(result, num)
  end
  return result
end

puts raised(7, 3)


def xor?(cond1, cond2)
  if cond1 == true && cond2 == false
    return true
  elsif cond1 == false && cond2 == true
    return true
  else
    return false
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

def palindrome?(str)
  str.reverse == str ? true : false
end

def reversearr(arr)
  revarr = []
  arr.reverse_each {|elem| revarr.push(elem)}
  puts arr == revarr
end

def real_palindrome?(str)
  str = str.downcase.gsub(/[^a-z0-9]/, '')
  palindrome?(str)
end

def palindromic_number?(num)
  num = num.to_s
  num.reverse == num ? true: false
end

def uppercase?(str)
  str == str.upcase
end

puts uppercase?(' ') == true
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true





  
  



