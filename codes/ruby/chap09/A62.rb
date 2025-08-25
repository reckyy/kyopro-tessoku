def gc = gets.chomp
def gi = gets.to_i
def gsm = gets.split.map(&:to_i)
def gcc = gets.chomp.chars

def dfs_iter(start, graph, visited)
  stack = [start]
  until stack.empty?
    v = stack.pop
    next if visited[v]
    visited[v] = true
    graph[v].sort.each { |to| stack << to unless visited[to] }
  end
end


n, m = gsm
graph = Array.new(n+1) { Set.new }
m.times do
  a, b = gsm
  graph[a].add(b)
  graph[b].add(a)
end
visited = Array.new(n+1, false)
dfs_iter(1, graph, visited)
puts visited[1..].all? { |v| v } ? 'The graph is connected.' : 'The graph is not connected.'
