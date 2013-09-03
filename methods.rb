def friend(name)
  puts "My friend is " + name + "."
end

def friend2(name)
  puts "My friend is #{name}."
end

def add(a, b)
    return a + b
end

# Splat arguments: "Hey Ruby, I don't know how many arguments there are about to be, but it could be more than one."
def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end

what_up("What up", "Justin", "Ben", "Kevin Sorbo")