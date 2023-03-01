module WorkSound
  def noise(sound)
    sound
  end
end

class Machine
  include WorkSound
end

hammer_robot = Machine.new
puts "The hammer robot goes #{hammer_robot.noise("whirrr!")}"