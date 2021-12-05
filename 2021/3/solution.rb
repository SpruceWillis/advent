counts = nil
file = 'input.txt'
File.readlines(file).each do |line|
  clean_line = line.strip
  counts ||= Array.new(clean_line.length) {|_| {} }
  clean_line.each_char.with_index do |char, idx|
    hash = counts[idx]
    hash[char] = hash.fetch(char, 0) + 1
  end
end
puts counts
gamma_str = counts.map do |h|
  if h['1'] > h['0']
    '1'
  else
    '0'
  end
end.join('')
epsilon_str = counts.map do |h|
  if h['1'] < h['0']
    '1'
  else
    '0'
  end
end.join('')

# epsilon_str = counts.map{|c| c < 0 ? 1 : 0}.join('')
gamma = gamma_str.to_i(2)
puts "gamma rate: #{gamma_str}"
puts "gamma in decimal: #{gamma}"
# epsilon_str = "1" * gamma_str.length
epsilon = epsilon_str.to_i(2)
puts "epsilon rate: #{epsilon_str}"
puts "epsilon: #{epsilon}"
puts "product: #{epsilon * gamma}"
