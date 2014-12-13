require 'stock_quote'
require 'hue'

quote = StockQuote::Stock.quote(["TSLA"])
if quote.response_code != 200
  if quote.days_high > 200
    # set to green
    light.hue = 25500
  else
    # set to red
    light.hue = 65280
  end
end