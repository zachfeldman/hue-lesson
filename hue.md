autoscale: true
footer: @zachfeldman
slidenumbers: true

#[fit] Hue +<br> Ruby

<br>
Special thanks: `soffes/hue` docs

---

# `$ whoami`

Chief Academic Officer, Co-Founder
New York Code + Design Academy
 
zach@nycda.com
zfeldman.com
github.com/zachfeldman
twitter.com/zachfeldman

---

# How this works

Listen to us explain/demo for a bit, then we'll have exercises for you to try

---

# Make sure you have Ruby installed

````bash
$ ruby -v
````

---

# Install the Hue Rubygem

````bash
$ gem install hue
````

---

# Using the Hue RubyGem CLI

- Be on the same WiFi network as your Hue bridge

- Press the button on the bridge within 30 seconds of your first use of the CLI

--- 

# Sample Hue RubyGem CLI commands

````bash
$ hue all on
$ hue all off
$ hue lights
$ hue light 2 on
$ hue light 2 off
````

---

# Exercise

Try hooking up your Hue set to the Hue RubyGem CLI and executing some of the commands we learned above

---

# Using Ruby (the language)

- Two different ways to use Ruby:

  - From Interactive RuBy (IRB), open with `$ irb` then require hue `> require 'hue'

  - From a Ruby script (test.rb, for instance) that you'll run with <br>`$ ruby test.rb`


---

# Using commands in IRB
## Turn on the first light

````ruby
$ irb
> require 'hue'
> client = Hue::Client.new
> light = client.lights.first
> light.on = true
````
---

# Hue colors

[Let's look at this together](http://www.developers.meethue.com/documentation/core-concepts)

[http://hueconverter.herokuapp.com/](http://hueconverter.herokuapp.com/)

See "color gets more complicated"

````ruby
> transition_time = 10*5
> light.set_state({:hue=>30326, :saturation=>255, :bri=>1}, transition_time).
````

---

# Common Hue colors

- 12750 = Yellow
- 25500 = Green
- 46920 = Blue
- 56100 = Pink
- 65280 = Red

---

# Using commands in IRB
## Mess with a light's hue or color temp

````ruby
$ irb
> require 'hue'
> client = Hue::Client.new
> light = client.lights.first
> light.hue = 46920
> light.color_temperature = 100
````

---

# Using commands in IRB
## Send multiple commands and an amount of time for a transition to be made

````ruby
> require 'hue'
> client = Hue::Client.new
> light = client.lights.first
> transition_time = 10*5 # Hue transition times are in 1/10 of a second.
> light.set_state({:color_temperature => 400}, transition_time).
````

---

# Exercise

Spend some time trying to execute Hue commands from Interactive RuBy

- Open up `$ irb`

- Try some of the commands from the last few slides (see https://github.com/soffes/hue)

---

# Your first Hue Ruby script

- You can also execute these commands from a script rather than one at a time

- Let's examine a sample script or two together

---

#[fit] `hue.rb`

---

#[fit] `hue2.rb`

---

# Roll your own

Spend 10 minutes creating your own sample hue ruby script.

---

#[fit] Incorporating stocks, weather

---

#[fit] Weather

---

#[fit] Stocks

---

# More advanced
### (If we have time)

# Sinatra/API wrapper!


