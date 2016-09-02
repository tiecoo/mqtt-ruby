require 'rubygems'
require 'mqtt'

# Publish method
MQTT::Client.connect('mqtt://localhost') do |x|
  x.publish('test', 'It worked!')
end