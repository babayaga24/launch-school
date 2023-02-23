def prompt(message)
  Kernel.puts(">> #{message}")
end

def valid_int?(num)
  puts num.to_i
  num.to_i.integer?
end

def operation_to_message(opt)
  case opt
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

# initialize the number variables
number1 = ''
number2 = ''

# Welcome the user
prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  # ask the user for first number and do a validation check
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_int?(number1)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number")
    end
  end

  # ask the user for second number and do a validation check
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_int?(number2)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number")
    end
  end

  # ask the user for an operation to perform and validate
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  # perform the operation on the two numbers
  result =  case operator
            when '1'
              number1.to_i() + number2.to_i()
            when '2'
              number1.to_i() - number2.to_i()
            when '3'
              number1.to_i() * number2.to_i()
            when '4'
              number1.to_f() / number2.to_f()
            end

  # output the result
  prompt("The result is #{result}.")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")