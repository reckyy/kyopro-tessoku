def gc = gets.chomp
def gi = gets.to_i
def gsm = gets.split.map(&:to_i)
def gcc = gets.chomp.chars

n, m = gsm
graph = Array.new(n+1) { Set.new }
m.times do
  a, b = gsm
  graph[a].add(b)
  graph[b].add(a)
end
(1..n).each { |i| puts "#{i}: {#{graph[i].sort.join(', ')}}" }
