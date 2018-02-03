require "./rover.rb"

puts "Set size n of grid:"
grid_size = gets.chomp.to_i

puts "How many rovers?"
number_of_rovers = gets.chomp.to_i

# (1..number_of_rovers).each do |i|
#   puts "Enter Rover #{i} coordinates and direction:"
#
#   state_array = gets.chomp.split(/ /)
#
#   state_x = state_array[0]
#   state_y = state_array[1]
#   state_direction = state_array[2]
#
#   rover = Rover.new(state_x, state_y, state_direction)
#   rover.number = i
# end


puts "Enter Rover 1 coordinates and direction:"
state_array = gets.chomp.split

state_x = state_array[0].to_i
state_y = state_array[1].to_i
state_direction = state_array[2]

rover1 = Rover.new(state_x, state_y, state_direction)

rover1.read_instructions("MLMRMLRMLRRRRMRMMMM")
puts rover1.state
