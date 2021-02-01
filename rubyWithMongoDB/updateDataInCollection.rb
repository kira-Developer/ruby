require 'mongo'
require_relative 'connect'
include Connect
db = connect
collection = db[:users]
collection.update_one({username: 'test'} , { '$set': { username:"test_update" } })
collection.find({username:'test'} , {}).each  do |doc|
  p doc
end


