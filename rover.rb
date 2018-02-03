class Rover

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def x
    @x
  end

  def y
    @y
  end

  def direction
    @direction
  end

  ### INSTANCE METHODS ###


  def read_instruction(command)
    list = ["N", "E", "S", "W"]
    current_index = list.index(@direction)

    if command == "L"
      new_index = current_index - 1
      @direction = list[new_index]

    elsif command == "R"
      new_index = current_index + 1
      @direction = list[new_index]

    else
      if @direction == "N"
        @y += 1
      elsif @direction == "E"
        @x += 1
      elsif @direction == "S"
        @y -= 1
      else
        @x -= 1
      end
    end
end





rover = Rover.new(1, 1, "N")
puts rover.read_instruction("L")
puts rover.direction
