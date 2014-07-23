# Exercises from Classes and Objects Part 1/Part 2
class MyCar
	attr_accessor :color, :model
	attr_reader :year 

	def self.mileage(gallons, miles)
		puts "#{miles/gallons} miles per gallon of gas"
	end

	def initialize(y, c, m)
		@year = y 
		@color = c
		@model = m 
		@current_speed = 0 
	end 

	def speed_up(number)
		@current_speed += number 
		puts "You've accelerated #{number} mph"
	end

	def brake(number)
		@current_speed -= number
		puts "You've deccelerated #{number} mph"
	end

	def current_speed
		puts "You are currently driving #{@current_speed} mph"
	end

	def info
		puts "Check out my #{color} #{year} #{model}"
	end

	def spray_paint(color)
		self.color = color
		puts "Your new #{color} paint job looks awesome!"
	end

	def to_s
		"My car is a #{self.color}, #{self.year}, #{self.model}"
	end

end 

	
altima = MyCar.new("2010", "Silver", "Nissan Altima")
altima.speed_up(20)
altima.current_speed
altima.brake(10)
altima.current_speed

altima.color = "Black"
puts altima.color
puts altima.info 
puts altima.year

altima.spray_paint("Blue")

MyCar.mileage(10,20)

my_car = MyCar.new("201", "Black", "R8")
puts my_car