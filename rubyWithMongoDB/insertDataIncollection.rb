require 'mongo'
require_relative 'connect'
include Connect
db = connect
collection = db[:users]
print "Your username: "
username = gets.chomp.to_s
print "Your name: "
name  = gets.chomp.to_s
print "Your email: "
email = gets.chomp.to_s
print "Your password: "
password =  gets.chomp.to_s

data = {
  username: username,
  name: name,
  email:email,
  password:password
}

result = collection.insert_one data
result.n
