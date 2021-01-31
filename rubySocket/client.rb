require 'socket'

hostName = 'localhost'
port = 4444
s = TCPSocket.open hostName , port
while line = s.gets
  puts line.chop
end
s.close