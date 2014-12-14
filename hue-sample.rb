require 'hue'

client = Hue::Client.new
light = client.lights.each do |l|
  l.on = true
  l.set_state({:hue=>54484, :saturation=>255, :bri=>1})
  sleep 6
end

