def gc = gets.chomp
def gi = gets.to_i
def gsm = gets.split.map(&:to_i)
def gcc = gets.chomp.chars

n, m = gsm
g = Array.new(n+1) { [] }
m.times do
  a, b = gsm
  g[a] << b
  g[b] << a
end
dist = Array.new(n+1, -1)
dist[1] = 0

q = []
head = 0
q << 1
while head < q.length
  v = q[head]; head += 1
  g[v].each do |to|
    next if dist[to] != -1

    dist[to] = dist[v] + 1
    q << to
  end
end
(1..n).each { |i| puts dist[i] }
