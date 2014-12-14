require 'stock_quote'
require 'hue'

client = Hue::Client.new
light = client.lights.first

quote = StockQuote::Stock.quote(["TSLA"])
light.on = true

# p quote.inspect
p quote.days_high


if quote.response_code == 200
  if quote.days_high < 200
    # set to green
    light.hue = 25500
  else
    # set to red
    light.hue = 65280
  end
end