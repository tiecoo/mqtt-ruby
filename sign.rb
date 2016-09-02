require 'rubygems'
require 'mqtt'

MQTT::Client.connect('mqtt://localhost') do |x|
  # If you pass a block to the get method, then it will loop
  x.get('test') do |topic,message|
    puts "#{topic}: #{message}"
  end
end