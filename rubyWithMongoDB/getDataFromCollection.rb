require 'mongo'
require_relative 'connect'
include Connect
db = connect
collection  = db[:users]

collection.find.each do |doc| doc
puts doc
end
