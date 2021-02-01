require 'mongo'
require_relative 'connect'
include Connect
db = connect
collection = db[:users]

  begin
    collection.create
    if collection.capped?
      puts 'Your Database And Collections is Create And Append'
    else puts "Some Errors Have Occurred" end
    rescue  Mongo::Error::OperationFailure ; puts "already exists" end




