require 'msgpack/rpc'

module Chat
class Client
  def initialize(host, port)
    @server = MessagePack::RPC::Client.new(host, port)
  end

  def send(user, msg)
    @server.call(:write, user, msg)
  end

  def messages(n)
    @server.call(:messages, n)
  end
end
end
