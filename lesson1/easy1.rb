def repeat (str, rep)
rep.times {|i| puts str}
end

repeat('Hi', 3)



def is_odd(num)
  num.abs % 2 == 1 ? true : false
end

puts is_odd(-8)


def stringy(num, alt = 1)
  str = ''
  for i in 1..num do
    str.concat(((i+alt-1) % 2).to_s)
  end
  return str
end

puts stringy(8,0)


def calculate_bonus (salary, bool)
  bool == true ? (salary/2) : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


def print_in_box(str)
  print '+' 
  (str.length).times do print '-' end
  print '+'
  puts
  print '|'
  print str
  print '|'
  puts
  print '+' 
  (str.length).times do print '-' end
  print '+'
  puts
end

print_in_box('To boldly go where no one has gone before.')

def triangle(num)
  for i in 1..num
    puts "#{"*" * i}#{" " * (num-i)}"
  end
end
triangle(9)

print "Enter a noun: "
noun = gets.chomp

print "Enter a verb: "
verb = gets.chomp

print "Enter an adjective: "
adjective = gets.chomp

print "Enter an adverb: "
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"


def reversed_number(num)
  str = num.to_s
  mod_str = str.reverse
  return mod_str.to_i
end


def center_of(str)
  if (str.length % 2) == 1
    puts str[(str.length/2).to_i]
  else
    puts str[(str.length/2)-1] + str[(str.length/2)]
  end
end

center_of('I love ruby')
center_of('Launch School')
center_of('Launch')
center_of('Launchschool')
center_of('x')