n = gets.to_i
a = gets.split.map(&:to_i).sort
q = gets.to_i
q.times do
  x = gets.to_i
  ans = a.bsearch_index { |num| num >= x } || n
  puts ans
end
