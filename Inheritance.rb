class Chef
  def makeChiken
    puts "The Chef Makes Chicken"
  end
  def makeSalad
    puts "The Chef Makes Salad"
  end
  def makeSpecialDish
    puts "The Chef Makes Bbq  Ribs"
  end
end
class ItalianChef < Chef
  def makeSpecialDish
    puts "The Chef Makes Eggplant  Parm"
  end
  def makePasta
    print "The Chef Make Pasta"
  end
end
chef = Chef.new
chef.makeChiken

italinChef = ItalianChef.new
italinChef.makeSalad
italinChef.makePasta

