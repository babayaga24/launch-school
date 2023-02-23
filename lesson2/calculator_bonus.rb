require 'yaml'
MESSAGES = YAML.load_file('calculator.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def welcome
  system('clear')
  prompt(messages('welcome', LANGUAGE))
end

def prompt(message)
  Kernel.puts(">> #{message}")
end

def valid_int?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num
end

def number?(num)
  valid_int?(num) || valid_float?(num)
end

def prompt_name
  loop do
    name = Kernel.gets().chomp()
  
    if name.strip.empty?()
      prompt(messages('valid_name', LANGUAGE))
    else
      return name
    end
  end
end

def prompt_for_first_number(num)
  loop do
    prompt(messages('first_number', LANGUAGE))
    num= Kernel.gets().chomp()

    if valid_int?(num)
      return num
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end
end

def prompt_for_second_number(num)
  loop do
    prompt(messages('second_number', LANGUAGE))
    num= Kernel.gets().chomp()

    if valid_int?(num)
      return num
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end
end

def prompt_operator
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      return operator
    else
      prompt(messages('operator_choice', LANGUAGE))
    end
  end
end

def operation_to_message(opt)
  operation = case opt
              when '1'
                messages('add', LANGUAGE)
              when '2'
                messages('subtract', LANGUAGE)
              when '3'
                messages('multiply', LANGUAGE)
              when '4'
                messages('divide', LANGUAGE)
              end
  operation
end

def perform_operation(operation, number1, number2)
  case operation
  when '1'
    number1.to_i() + number2.to_i()
  when '2'
    number1.to_i() - number2.to_i()
  when '3'
    number1.to_i() * number2.to_i()
  when '4'
    number1.to_f() / number2.to_f()
  end
end

# Welcome the user
welcome()

# Ask for the user's name and greet him/her/them
name = prompt_name()
prompt(messages('greeting', LANGUAGE) + name)

loop do # main loop
    # ask the user for first number and do a validation check
    number1 = prompt_for_first_number(number1)

    # ask the user for second number and do a validation check
    number2 = prompt_for_second_number(number2)

    # ask the user for an operation to perform and validate
    prompt(messages('operator', LANGUAGE))
    operator = prompt_operator()

    # check for zero division
    if number2.to_i == 0 && operator == '4'
      prompt(messages('zero_division', LANGUAGE))
      next
    end


  prompt("#{operation_to_message(operator)} the two numbers...")

  # perform the operation on the two numbers
  result = perform_operation(operator, number1, number2)
  result = result.floor(2).to_s

  sleep 2

  # output the result
  prompt(messages('result', LANGUAGE) + result)

  prompt(messages('another_calculation', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('goodbye', LANGUAGE))