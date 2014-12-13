require 'hue'

client = Hue::Client.new
light = client.lights.first

light.color_temperature = 100

# Set to yellow
light.hue = 12750

# Wait 2 seconds
sleep 2

# Set to green
light.hue = 25500

