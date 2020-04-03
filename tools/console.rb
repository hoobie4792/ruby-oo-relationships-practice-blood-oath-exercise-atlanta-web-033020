require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("The Shadows", "Atlanta", 2020, "It's dark in here")
cult2 = Cult.new("The Anti-Shadows", "New York", 1984, "You shall not pass")
cult3 = Cult.new("Flatiron School", "Everywhere", 2010, "I hope I pass")
cult4 = Cult.new("Facebook Anonymous", "Everywhere", 2010, "We type good")
cult5 = Cult.new("Corona Virus", "Everywhere", 2019, "Stay inside")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
