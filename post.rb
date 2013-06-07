require File.expand_path(File.dirname(__FILE__), 'client')
host = ARGV.shift || '127.0.0.1'
port = ARGV.shift || 12345
client = Chat::Client.new(host, port)
while true
  client.send("hoge", "hello")
  puts client.messages(1)
end
