#Create a class called MyCar. When you initialize a new instance or object of the class, 
#allow the user to define some instance variables that tell us the year, color, and model of the car.
# Create an instance variable that is set to 0 during instantiation of the object to track the 
# current speed of the car as well. Create instance methods that allow the car to speed up, brake, 
# and shut the car off.

class MyCar
  attr_accessor :color, :speed
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end
  def speed_up(speed_increase)
    self.speed += speed_increase
  end
  def brake(speed_decrease)
    self.speed -= speed_decrease
  end
  def turn_off
    self.speed = 0
  end
  def spray_paint(color)
    self.color = color
  end
end

Eileen = MyCar.new(1990, "red", "Civic")
puts "Eileen's current speed: #{Eileen.speed}"
Eileen.speed_up(90)
puts "We might die because we are going #{Eileen.speed} on a mountain road"
puts Eileen.brake(60)
puts "Slowing down, oh good. Turn off the car now"
puts Eileen.turn_off
puts "Eileen is a #{Eileen.color} #{Eileen.year} #{Eileen.model}."
puts "But now it should be blue because I said so"
Eileen.spray_paint("blue")
puts "It is now #{Eileen.color}"
# This causes an error because year cannot be changed because no setter was defined:
# Eileen.year = 2020