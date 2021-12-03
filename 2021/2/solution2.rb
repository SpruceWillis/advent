aim = 0
horizontal = 0
depth = 0
File.readlines('input.txt').each do |line|
  direction, distance = line.split(' ')
  distance = distance.to_i
  case direction
    when 'up'
      aim -= distance
    when 'forward'
      horizontal += distance
      depth += distance * aim
    when 'down'
      aim += distance
    else
      throw "unexpected direction #{direction}"
  end
end
puts horizontal * depth
