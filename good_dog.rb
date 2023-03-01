module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak  # The Speak module is included in the GoodDog class
end

class HumanBeing
  include Speak
end


sparky = GoodDog.new
sparky.speak("Woof!")

bob = HumanBeing.new
bob.speak("Hello")

puts GoodDog.ancestors  # shows the ancestors of the GoodDog class e.g. the Speak module

