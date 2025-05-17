class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @speed = 0
  end

  def speed_up(value)
  @speed += value
      puts "You push the gas and accelerate #{value} mph." 
  end

  def brake(value)
  @speed -= value
    puts "You push the brake and decelerate #{value} mph."
  end

  def shut_down
  @speed = 0
    puts "Let's park this bad boy!"
  end

  def current_speed()
    puts "You're currently at #{@speed} km/h"
  end

  def spray_paint(color)
    @color = color
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
p lumina.color
lumina.spray_paint("black")
p lumina.color
