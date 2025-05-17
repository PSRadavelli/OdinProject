module Speak
  def speak(sound)
    puts "#{sound}"
  end
end


class HumanBeing
  include Speak
end


## gustavo = HumanBeing.new
## //gustavo.speak("She's gonna be fine! ")
## //p gustavo.is_a?(Object)

class GoodDog
  def initialize(name)
    @name = name
  end
end


bobby =  GoodDog.new("Bobby")

