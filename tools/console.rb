require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("The Shadows", "Atlanta", 2020, "It's dark in here", 18)
cult2 = Cult.new("The Anti-Shadows", "New York", 1984, "You shall not pass", 18)
cult3 = Cult.new("Flatiron School", "Everywhere", 2010, "I hope I pass", 18)
cult4 = Cult.new("Jersey Shore Fanboys", "New York", 2012, "GTL boi!", 18)
cult5 = Cult.new("Pizza Fans", "New York", 2014, "Pizza Pizza", 18)
cult6 = Cult.new("Ninja Turtle Imposters", "Atlanta", 2006, "Listen to the rat", 18)

wendy = Follower.new("Wendy", 26, "I got this")
brandon = Follower.new("Brandon", 27, "I guess so")
moxxie = Follower.new("Moxxie", 25, "I like red pandas")
maddie = Follower.new("Maddie", 28, "The Shining is real")
robert = Follower.new("Robert", 34, "I like learning")
gustave = Follower.new("Gustave", 29, "Fist pump, pushup, chapstick")
wayne = Follower.new("Wayne", 28, "I like flag football more than life itself")
ashley = Follower.new("Ashley", 28, "I'm a little too into Tiger King")
jessie = Follower.new("Jessie", 22, "TV is my true passion in life")
geoffrey = Follower.new("Geoffrey", 27, "Either you beat the game or the game beats you")
cory = Follower.new("Cory", 29, "Newnan is ok, but I prefer Mars")

oath1 = BloodOath.new(wendy, cult1, "2020-02-20")
oath2 = BloodOath.new(brandon, cult2, "2019-04-03")
oath3 = BloodOath.new(brandon, cult1, "2020-02-21")
oath4 = BloodOath.new(moxxie, cult3, "2020-02-22")
oath5 = BloodOath.new(maddie, cult3, "2020-02-23")
oath6 = BloodOath.new(robert, cult3, "2020-02-24")
oath7 = BloodOath.new(gustave, cult4, "2012-01-04")
oath8 = BloodOath.new(maddie, cult1, "2020-01-23")
oath9 = BloodOath.new(maddie, cult6, "2020-01-26")
oath10 = BloodOath.new(wayne, cult2, "2020-01-26")
oath11 = BloodOath.new(ashley, cult2, "2020-01-26")
oath12 = BloodOath.new(jessie, cult2, "2020-01-26")
oath13 = BloodOath.new(geoffrey, cult2, "2020-01-26")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
