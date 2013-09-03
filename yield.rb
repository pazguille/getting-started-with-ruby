# yield method
def say_hello(&block)
  puts "Hello World"
  yield
  puts "I said hello"
end

say_hello do
  puts "I am inside of the say_hello block."
end

def show_numbers(numbers = 10)
  i = 0
  while i < 10
    yield i
    i += 1
  end
end

show_numbers do |number|
  puts "The current number is #{number}."
  number = number * 2
  puts "The current number multiplied by 2 is #{number}."
end

def get_name(&block)
  print "Enter your name: "
  name = gets.chomp
  yield name
  puts "It was nice to meet you, #{name}"
end

get_name do |name|
  puts "Hi, #{name}."
  name = name.upcase
  puts "Uppercased, your name is #{name}"
end