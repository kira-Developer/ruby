def say_Hello(name)
  return  "Hello " + String(name)
end

puts say_Hello("kira")
puts "#" * 50

def sum(number1=nil , number2=nil)
  return  Integer(number1) + Integer(number2)
end

puts sum 1 , 5
puts "#" * 50


def language

  puts "Learn Ruby!"

end



def splitString(str , chr =nil)
  return str.split(chr).join(" ")
end
puts splitString 'kira-kira-is-here',  '-'

# Undefine the language method
# Using undef keyword
# undef  splitString

puts splitString 'kira-kira-is-here',  '-'