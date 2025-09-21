def gc = gets.chomp
def gi = gets.to_i
def gsm = gets.split.map(&:to_i)
def gcc = gets.chomp.chars

r, c = gsm
sy, sx = gsm
gy, gx = gsm
sx -= 1; sy -= 1
gx -= 1; gy -= 1
grid = r.times.map { gcc }
dist = Array.new(r) { Array.new(c, -1) }

q = []
head = 0

dist[sy][sx] = 0
q << [sy, sx]

dirs = [[-1, 0], [1, 0], [0, -1], [0, 1]]

inside = ->(y, x) { y >= 0 && y < r && x >= 0 && x < c }

while head < q.length
  y, x = q[head]; head += 1
  dirs.each do |dy, dx|
    ny = y + dy; nx = x + dx
    next unless inside.call(ny, nx)
    next if grid[ny][nx] == '#'
    next if dist[ny][nx] != -1

    dist[ny][nx] = dist[y][x] + 1
    q << [ny, nx]
  end
end
puts dist[gy][gx]
