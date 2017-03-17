# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize(input_options)
    @power = input_options[:power]
    @volume = input_options[:volume]
    @channel = input_options[:channel]
  end
end

class Remote
  attr_reader :tv

  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    tv.power == "on" ? tv.power = "off" : tv.power = "on"
  end

  def increment_volume
    tv.volume += 1
  end

  def decrement_volume
    tv.volume -= 1
  end

  def set_channel(channel)
    tv.channel = channel
  end
end

toshiba = Tv.new({power: "off", volume: 40, channel: 200})
toshiba_remote = Remote.new(toshiba)

p toshiba
p toshiba_remote

p "====toggle_power method:====="
p "TEST: Toggling Tv off to on"
p "Tv power before toggle_power: #{toshiba.power}"
toshiba_remote.toggle_power
p "Tv power after toggle_power: #{toshiba.power}"
p "TEST: Toggling Tv on to off"
p "Tv power before toggle_power: #{toshiba.power}"
toshiba_remote.toggle_power
p "Tv power after toggle_power: #{toshiba.power}"
p "====increment_volume method:====="
p "TEST: Increment volume by 1"
p "Tv volume before increment_volume: #{toshiba.volume}"
toshiba_remote.increment_volume
p "Tv volume after increment_volume: #{toshiba.volume}"

p "====decrement_volume method:====="
p "TEST: Decrement volume by 1"
p "Tv volume before decrement_volume: #{toshiba.volume}"
toshiba_remote.decrement_volume
p "Tv volume after decrement_volume: #{toshiba.volume}"

p "====set_channel method:====="
p "TEST: Set channel to 50"
p "Channel before set_channel: #{toshiba.channel}"
toshiba_remote.set_channel(50)
p "Channel after set_channel: #{toshiba.channel}"



