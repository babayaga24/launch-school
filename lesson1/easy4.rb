def short_long_short(str1, str2)
  if str1.length <= str2.length 
    str1+str2+str1
  else
    str2+str1+str2
  end
end


def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century = century.to_s

  if ['11', '12', '13'].include?(century[-2..-1])
    "#{century}th"
  else
    case century[-1]
    when '1' then "#{century}st"
    when '2' then "#{century}nd"
    when '3' then "#{century}rd"
    else "#{century}th"
    end
  end
end


require 'date'
def leap_year?(year)
  Date.gregorian_leap?(year)
end


def leap_year?(year)
  if year % 4 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 400 == 0
  end
end


def multisum(int)
  sum = 0
  for i in 1..int
    if (i % 3 == 0 || i % 5 == 0)
      sum = sum + i 
      i = i + 1
    else
      i = i + 1
    end
  end
  puts sum
end


def running_total(arr)
  new_arr = []
  for i in 0..arr.length-1
    sum = arr[0..i].sum
    new_arr.push(sum)
  end
  new_arr
end


DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(str)
 digits = str.chars.map { |elem| DIGITS[elem]}
 value = 0
 digits.each {|digit| value = 10*value + digit}
 value
end

def string_to_signed_integer(str)
  mod_str = str[1..-1]
  value = string_to_integer(mod_str)

  if str[0] == '-'
    return 0 - value
  elsif str[0] == '+'
    return value
  else
    return string_to_integer(str)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100


STRING = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(int)
  arr = int.digits
  mod_arr = (arr.map {|num| STRING[num]}).reverse

  str = ''
  mod_arr.each {|string| str = str + string}
  str
end

def signed_integer_to_string (num)
  if num > 0 
    arr = num.digits
    mod_arr = (arr.map {|num| STRING[num]}).reverse

    str = ''
    mod_arr.each {|string| str = str + string}
    return str.insert(0, '+')
  elsif num < 0 
    arr = (0-num).digits
    mod_arr = (arr.map {|num| STRING[num]}).reverse

    str = ''
    mod_arr.each {|string| str = str + string}
    return str.insert(0, '-')
  else
    arr = num.digits
    mod_arr = (arr.map {|num| STRING[num]}).reverse

    str = ''
    mod_arr.each {|string| str = str + string}
    str
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'

