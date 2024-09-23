# lib/rotate_left.rb
require_relative 'exceptions.rb'

# below is probably a better implementation as it uses native language functions
def rotate_left_native(array, num_positions)
  raise OnlyPositiveIntegers if num_positions < 0
  array.rotate(num_positions)
end

# Here's my own implementation as that's likely what is intended
def rotate_left(array, num_positions)
  raise OnlyPositiveIntegers if num_positions < 0
  return array if array.length <= 1 || num_positions == 0
  effective_rotation = num_positions % array.length # get the amount ne need to rotate in the case that the rotation is larger than the array length
  rotating_section = array.slice(0, effective_rotation)
  remaining_section = array.slice(effective_rotation, array.length)
  return remaining_section + rotating_section
end

# Here are the example inputs and outputs from the challenge sheet.
# unit tests are in /spec/rotate_left_spec.rb
puts rotate_left([1,2,3,4,5,6,7], 2)
puts '---'
puts rotate_left([1,2,3,4,5,6,7], 8)
begin
    rotate_left([1,2,3,4,5,6,7], -8)
rescue OnlyPositiveIntegers => e
  puts "error raised with the following message:"
  puts e.message
  puts "Handle it as needed."
end
