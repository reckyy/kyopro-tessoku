h, w, n = gets.split.map(&:to_i)
grid = Array.new(h+2) { [0] * (w+2) }
n.times do
  a, b, c, d = gets.split.map(&:to_i)
  grid[a][b] += 1
  grid[c+1][d+1] += 1
  grid[a][d+1] -= 1
  grid[c+1][b] -= 1
end

(1..h).each do |i|
  (1..w).each do |j|
    grid[i][j] += grid[i][j - 1]
  end
end

(1..h).each do |i|
  (1..w).each do |j|
    grid[i][j] += grid[i - 1][j]
  end
end

(1..h).each do |i|
  puts grid[i][1..w].join(' ')
end
