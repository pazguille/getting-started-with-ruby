# BLocks
def say_hello(&block)
  puts "Hello, world!"
  block.call
end

# The curly braces notation have a higher priority inside of the Ruby interpreter.
# say_hello { puts "Hello again" }

say_hello do
  puts "Hello again"
end


def say_hello2(&block)
  puts "Hello, world!"

  if block.given?
    block.call
  else
    puts "No block was given"
  end
end

say_hello2 do
  puts "Hello again"
end

def say_hello3(&block)
  puts "Hello, world!"
  name = block.call
  puts "You entered #{name} as your name."
end

# say_hello2 { "Guille" }

say_hello2 do
  puts "This is inside of the say_hello block."

  # The last value inside of the block that's what gets returned.
  "Guille"
end

def herader(&block)
  puts "This is our hedaer"
  block.call
end