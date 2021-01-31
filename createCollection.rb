require 'mongo'
require_relative 'rubyWithMongoDB/connect'
include Connect
db = connect
collection = db[:users, capped: true, size: 10000]

  begin
    collection.create
    if collection.capped?
      puts 'Your Database And Collections is Create And Append'
    else puts "Some Errors Have Occurred"
    end
    rescue  Mongo::Error::OperationFailure ; puts "already exists" end




