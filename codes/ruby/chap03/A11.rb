n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ans = a.bsearch_index { |num| num >= x }
puts ans + 1
