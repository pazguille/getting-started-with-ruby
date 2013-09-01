# Defines a basic class to greet
class Greeter

  def initialize(name = 'World')
    @name = name
  end

  # Defines a method to say Hi!
  def say_hi

    if @name.class == String
      puts "Hi, #{@name}!"
    elsif @name.class == Array
      @name.each do |n|
        puts "Hi, #{n}!"
      end
    end

  end

  # Defines a method to say Bye!
  def say_bye
    puts "Bye, #{@name}!"
  end
end

g1 = Greeter.new
g1.say_hi

g2 = Greeter.new("Guille")
g2.say_hi

g3 = Greeter.new(["Guille", "Eve"])
g3.say_hi