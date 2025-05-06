t = gets.to_i
n = gets.to_i
b = Array.new(t+2, 0)
n.times do
  l, r = gets.split.map(&:to_i)
  b[l] += 1
  b[r] -= 1
end
(0...t).each do |i|
  puts b[i]
  b[i + 1] += b[i]
end
