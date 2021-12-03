#!/usr/bin/env ruby

prev = []
current = []
sum = 0
count = 0
File.readlines('input.txt').each_with_index do |l, idx|
  value = l.to_i
  current << value
  prev = current.length > 3 ? current.shift : 0
  prev_sum = sum 
  sum = sum + value - prev
  count += 1 if sum > prev_sum && idx > 2
end
puts count
