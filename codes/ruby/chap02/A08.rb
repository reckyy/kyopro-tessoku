h, w = gets.split.map(&:to_i)
grid = Array.new(h) { gets.split.map(&:to_i) }
s = Array.new(h+1) { Array.new(w+1, 0) }
(1..h).each { |i| (1..w).each { |j| s[i][j] += grid[i-1][j-1] + s[i][j-1] } }
(1..h).each { |i| (1..w).each { |j| s[i][j] += s[i-1][j] } }
q = gets.to_i
q.times do
  a, b, c, d = gets.split.map(&:to_i)
  puts s[c][d] - s[a-1][d] - s[c][b-1] + s[a-1][b-1]
end
