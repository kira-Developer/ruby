for i in 1..10
  puts "#{i}-hello world".capitalize
end
(1..3).each do
  puts "Hi"
end


for i in 1..10
  for d in 1..10 ;puts  "#{i} x #{d} = #{d*i}" end
end

name = "abdullh"

for i in name.split('') ; puts i end

name.split('').each do |c| puts c end
