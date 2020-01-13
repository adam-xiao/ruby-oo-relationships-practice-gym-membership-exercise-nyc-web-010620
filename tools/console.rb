# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

p1 = Lifter.new("Adam", 1000)
p2 = Lifter.new("Jay", 1500)
p3 = Lifter.new("Vic", 750)

g1 = Gym.new("ABC Gym")
g2 = Gym.new("XYZ Gym")
g3 = Gym.new("MNO Gym")

m1 = Membership.new(100, p1, g1)
m2 = Membership.new(200, p2, g2)
m3 = Membership.new(150, p1, g3)
m4 = Membership.new(100, p3, g1)
binding.pry

puts "Gains!"
