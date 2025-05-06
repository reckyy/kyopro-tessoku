d = gets.to_i
n = gets.to_i
b = Array.new(d+1, 0)
n.times do
  l, r = gets.split.map(&:to_i)
  b[l-1] += 1
  b[r] -= 1
end
ans = 0
(0...d).each do |i|
  ans += b[i]
  puts ans
end
