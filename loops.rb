# Prints numbers from 1 to 19
for num in 1...20
    puts num
end

# Prints numbers from 1 to 20
for num in 1..20
    puts num
end

#loop method
i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

i = 20
loop do
  i -= 1
  next if i % 2 == 1
  print "#{i}"
  break if i <= 0
end

# Arrays
my_array = [1, 2, 3, 4, 5]
array.each do |x|
  x += 10
  print "#{x}"
end

odds = [1,3,5,7,9]
odds.each do |x|
    double = x*2
    print "#{double}"
end

# Times
20.times {print "foobar"}

# While
i = 0
while i < 50
    i +=1
    print "#{i}"
end

# Until
i = 0
until i > 49
    i +=1
    print "#{i}"
end

# for
for num in 1..50
    print "#{num}"
end

# loop
i = 0
loop do
    print "Ruby!"
    i += 1
    break if i >= 30
end

# Times
30.times {print "Ruby!"}