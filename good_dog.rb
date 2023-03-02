module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  attr_accessor :name
  include Speak  # The Speak module is included in the GoodDog class

  def initialize(details = {}) # takes an array as an argument, the '= {}' sets the default to be an empty hash - see below for default values.
    defaults = {name: "Dog", colour: "white", breed: "poodle"} # sets default values in case any, or all, hash items are missing.
    defaults.merge!(details) # this merges defaults with details so that any hash values passed in details will overwrite the defaults.
    ### NOTE any extra hash values, e.g. 'age' will be ignored but not return any error.
    @name = defaults[:name]
    @colour = defaults[:colour]
    @breed = defaults[:breed]
  end

  def bark
    puts "#{name} says 'Woof woof!'"
  end
end

class HumanBeing
  include Speak
end


sparky = GoodDog.new({colour: "brown"})
sparky.speak("Woof!")
p sparky

fido = GoodDog.new({breed: "hound", age: 3})
p fido

# bob = HumanBeing.new
# bob.speak("Hello")

# puts GoodDog.ancestors  # shows the ancestors of the GoodDog class e.g. the Speak module

pooch = GoodDog.new({name: "Pooch"})
p pooch

dennis = GoodDog.new({occupation: "builder", age: 21, breed: "beagle"})
p dennis

pooch.bark

sparky.name = "Sparky"
p sparky