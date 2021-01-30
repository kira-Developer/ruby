module Tools
  def sayHello name
    puts "Hello #{name}"
  end
  def sayBye name
    puts "Bye #{name}"
  end
end

include Tools
Tools.sayHello "kira"

