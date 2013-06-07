require 'msgpack/rpc'
require File.expand_path(File.dirname(__FILE__), 'server')

srv = MessagePack::RPC::Server.new
bind = ARGV.shift || '0.0.0.0'
port = ARGV.shift || 12345
srv.listen(bind, port, Chat::Server.new)
srv.run
