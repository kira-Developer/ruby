File.open('forRead.txt' , 'r') do |file|
   fileRead = file.read # read file
   puts fileRead
   puts fileRead.include? 'ruby'

   # for read line #
   # fileRead.readline

   # for read lines #
   # fileRead.readlines

   # for read char #
   # fileRead.readchar

   file.close
end
