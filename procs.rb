# # Prock
# my_proc = Prock.new { }
# my_proc = proc { }
# my_proc = proc { puts "Hello World!" }

# my_proc.call


# # Lambda
# # Arguments are required!
# my_lambda = lambda { }
# my_lambda = -> { }

# # Examples
# my_proc = proc { |name| puts "Hello, #{name}" }
# my_proc.call # Hello,
# my_proc.call "pazguille" # Hello, pazguille
# my_proc.call("pazguille") # Hello, pazguille


# my_lambda = lambda { |name| puts "Hello, #{name}" }
# my_lambda.call # Error
# my_lambda.call "pazguille"  # Hello, pazguille

# # return "returning from proc inside method"
# def return_from_proc
#   variable = proc { return "returning from proc inside method" }
#   variable.call
#   return "returning from proc as last time from method"
# end

# # return "returning from lambda as last time from method"
# def return_from_lambda
#   variable = lambda { return "returning from lambda inside method" }
#   variable.call
#   return "returning from lambda as last time from method"
# end


class Paper

  def initialize(&block)
    yield self if block_given?
  end

  def set_variable
    return Proc.new do |kind, val|
      [kind, val].join(": ")
    end
  end

  def title(value)
    @title = set_variable.call "TITLE", value
  end

  def heading(value)
    @heading = set_variable.call "HEADING", value
  end

  def body(value)
    @body = set_variable.call "BODY", value
  end

  def display
    puts @title
    puts "-------------------"
    puts @heading
    puts "-------------------"
    puts @body
    puts "-------------------"
  end
end

# p is the new instance of Paper
paper = Paper.new do |p|
  p.title "My awesome paper"
  p.heading "This is my paper"
  p.body "The entire contents of my paper would go here."
end

paper.display