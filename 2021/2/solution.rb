vertical = 0
horizontal = 0
File.readlines('input.txt').each do |line|
  direction, distance = line.split(' ')
  distance = distance.to_i
  case direction
    when 'up'
      vertical -= distance
    when 'forward'
      horizontal += distance
    when 'down'
      vertical += distance
    else
      throw "unexpected direction #{direction}"
  end
end
puts horizontal * vertical
