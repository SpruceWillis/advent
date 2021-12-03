#!/usr/bin/env ruby

prev = nil
count = 0
File.readlines('input.txt').each do |line|
  l_value = line.to_i
  count += 1 if prev && l_value > prev.to_i
  prev = l_value
end
puts count
