require 'socket'

server = TCPServer.new(2345)
# loop do
#   Thread.start(socket = server.accept) do |socket|
#
#   socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
#   name = socket.gets.chomp
#   socket.puts "THAT'S A LOVELY NAME #{name}"
#
#   socket.close
#   end
# end

loop do
  Thread.start(socket = server.accept) do |socket|
    loop do
      socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
      name = socket.gets.chomp
      socket.puts "THAT'S A LOVELY NAME #{name}"
    end
  end
end
