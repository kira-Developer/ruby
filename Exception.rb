print "enter your name : ".capitalize

begin
  age  = Integer(gets.chomp)
  puts "your age is #{age}"
rescue ArgumentError
  puts "this is not number 1"

end

