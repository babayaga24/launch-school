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





