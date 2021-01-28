class Book
  attr_accessor :title , :author , :pages

  def initialize (title , author , pages)
    puts "Creating Book"
    @title = title
    @author = author
    @pages = pages
  end
end

book1 = Book.new 'Harry Potter' , 'JK Rowling' , 400
puts "#" * 50
book2 = Book.new 'Lord of the rings' , 'Tolkein' , 600
puts "#" * 50
puts book1.title;puts book1.author ;puts book1.pages
puts "#" * 50
puts book2.title;puts book2.author;puts book2.pages
