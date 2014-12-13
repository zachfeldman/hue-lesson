require 'forecast_io'
require 'hue'
require 'geocoder'

ForecastIO.api_key = '21a61c31ad148b8535d2a3f0c77c3516'

def get_coordinates(params)
  if !params[:address].nil?
    coords = Geocoder.coordinates(params[:address])
  elsif !params[:zip].nil?
    coords = Geocoder.coordinates(params[:zip])
  elsif request.ip != "0.0.0.0" || request.ip != "127.0.0.1"
    coords = Geocoder.coordinates(request.ip) 
  else
    raise "Unable to geolocate you."
  end
end


params = {}
params[:address] = "90 John St, New York, NY 10038"

coords = get_coordinates(params)

forecast = ForecastIO.forecast(coords[0], coords[1])

temperature = forecast.currently.temperature

if temperature > 80
  # set to red
  light.hue = 65280
elsif temperature > 70
  # set to yellow
  light.hue = 12750
elsif temperature > 50
  # set to pink
  light.hue = 56100
elsif temperature < 30
  # set to blue
  light.hue = 46920
else
  # set to white
  light.hue = 0
end
  


  
  