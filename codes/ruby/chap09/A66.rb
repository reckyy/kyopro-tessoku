n, q = gets.split.map(&:to_i)
parent = Array.new(n + 1) { |i| i }
def find(parent, x)
  while parent[x] != x
    parent[x] = parent[parent[x]]
    x = parent[x]
  end
  x
end
q.times do
  t, u, v = gets.split.map(&:to_i)
  case t
  when 1
    parent[find(parent, u)] = find(parent, v)
  when 2
    puts find(parent, u) == find(parent, v) ? "Yes" : "No"
  end
end
