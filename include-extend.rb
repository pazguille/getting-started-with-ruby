# Include
# Adds instance methods to a class
module SayHello
    def say_hello
        puts "Hello, #{@name}"
    end
end

class Hello
    include SayHello

    def initialize(name)
        @name = name
    end
end
hello = Hello.new("pazguille")
hello.say_hello

# Extend
# # Adds class methods to a class (Hello.method)
class Hello
    def initialize(name)
        @name = name
    end
end

module SayHello
    def say_hello
        puts "Hello, #{@name}"
    end
end
hello = Hello.new("pazguille")
hello.extend SayHello
hello.say_hello

class Hello
    extend SayHello

    def initialize(name)
        @name = name
    end
end