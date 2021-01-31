require 'mongo'
module Connect
  def connect
    return client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'rubyProject')
  end


end

