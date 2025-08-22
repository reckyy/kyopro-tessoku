def gc = gets.chomp
def gi = gets.to_i
def gsm = gets.split.map(&:to_i)
def gcc = gets.chomp.chars

n, m = gsm
friends = Array.new(n+1) { Set.new }
max = 0
m.times do
  a, b = gsm
  friends[a].add(b)
  friends[b].add(a)
  max = [[friends[a].size, friends[b].size].max, max].max
end
friends.each_with_index { |f, i| (puts i; exit) if f.size == max }
