class Rover

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
    @number
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

  def number
    @number
  end

  def state
    "Rover #{@number} is at (#{@x}, #{@y}), facing #{@direction}."
  end

  ### INSTANCE METHODS ###

  def action(command)
    directions = ["N", "E", "S", "W"]
    current_index = directions.index(@direction)

    if command == "L"
      new_index = current_index - 1
      @direction = directions[new_index % 4]

    elsif command == "R"
      new_index = current_index + 1
      @direction = directions[new_index % 4]

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

  def read_instructions(instructions)
    list_of_instructions = instructions.split(//)

    list_of_instructions.each do |instruction|
      action(instruction)
    end
  end

end


# rover = Rover.new(1, 1, "N")
# puts rover.direction
