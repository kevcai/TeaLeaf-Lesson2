module Loadable 
	def load(number)
		puts "I can tow a load of #{number} pounds."
	end 
end 

class Vehicle 
	attr_accessor :year, :color, :model

	@@num_objects = 0

	def self.gas_mileage(miles, gallon)
		puts "Your mpg is #{miles/gallon}"
	end

	def self.num_objects
		puts "There were #{@@num_objects} vehicles created."
	end 

	def initialize(year, color, model)
		@year = year 
		@color = color 
		@model = model 
		@current_speed = 0 
		@@num_objects += 1
	end

	def speed_up(number)
		@current_speed += number
		puts "You accelerated #{number} mph!"
	end 

	def slow_down(number)
		@current_speed -= number
		puts "You deccelerated #{number} mph!"
	end 

	def brake
		@current_speed = 0
		puts "You stomped on the break!"
	end

	def paint_job(color)
		self.color = color 
		puts "Your new #{color} paint job looks great!"
	end 

	def info
		puts "Check out my #{self.year}, #{self.color}, #{self.model}"
	end

	def to_s
		puts "Look at my beautiful #{self.year}, #{self.color}, #{self.model}"
	end

	def age
		"Your #{self.model} is #{years_old} years old."
	end 

	private

	def years_old
		Time.now.year - self.year 
	end 
end

class MyCar < Vehicle
	NUMBER_OF_DOORS = 4
end


class MyTruck < Vehicle
	include Loadable 
	NUMBER_OF_DOORS = 2
end

altima = MyCar.new(2010, "Silver", "Nissan Altima")
altima.info
altima.paint_job("Black")
altima.info

tundra = MyTruck.new("1999", "Red", "Toyota Tundra")
puts tundra.info 
tundra.load(100)

puts altima.age