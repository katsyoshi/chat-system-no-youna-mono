require 'msgpack/rpc'

module Chat
class Server
  def initialize
    @list = []
  end
  def messages(n)
    @list.reverse[0...n]
  end
  def write(user, msg)
    @list << {user: user, message: msg}
    puts "#{user}: #{msg}"
  end
end
end
