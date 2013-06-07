require 'msgpack/rpc'

module Chat
class Server
  def initialize
    @list = []
  end
  def messages(n=10)
    @list.reverse[0...n], @list.size
  end
  def write(user, msg)
    @list << {user: user, message: msg}
    puts "#{user}: #{msg}"
    @list.size
  end
end
end
