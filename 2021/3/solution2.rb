def count(strings, pos)
  strings.group_by{|str| str[pos]}
end

def find_rating_co2(strings)
  eligible_strings = strings
  pos = 0
  loop do
    grouped_strings = count(eligible_strings, pos)
    if grouped_strings['0'].length <= grouped_strings['1'].length
      eligible_strings = grouped_strings['1']
    else
      eligible_strings = grouped_strings['0']
    end
    pos += 1
    puts "eligible strings: #{eligible_strings.length}"
    break if eligible_strings.length <= 1
  end
  eligible_strings[0]
end

def find_rating_o2(strings)
  eligible_strings = strings
  pos = 0
  loop do
    grouped_strings = count(eligible_strings, pos)
    if grouped_strings['1'].length >= grouped_strings['0'].length
      eligible_strings = grouped_strings['0']
    else
      eligible_strings = grouped_strings['1']
    end
    pos += 1
    puts "eligible strings: #{eligible_strings.length}"
    break if eligible_strings.length <= 1
  end
  eligible_strings[0]
end

file = 'input.txt'
strings = File.read(file).split("\n")
o2_str = find_rating_o2(strings)

strings = File.read(file).split("\n")
co2_str = find_rating_co2(strings)
puts "o2 string: #{o2_str}"
puts "c02 str: #{co2_str}"

o2 = o2_str.to_i(2)
co2 = co2_str.to_i(2)

puts "o2: #{o2}"
puts "co2: #{co2}"

puts "rating: #{o2 * co2}"
