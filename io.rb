# IO
File.open("./my_file.txt", "w+") do |file|
  file.puts "Hello, world!"
end

File.open("./my_file.txt", "a+") do |file|
  file.puts "Hello, world!"
end

puts IO.read("my_file.txt")