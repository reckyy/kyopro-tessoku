n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
s = [0]
a.each_with_index { |x, i| s << s[i] + (x == 1 ? 1 : -1) }
q.times do
  l, r = gets.split.map(&:to_i)
  result = case s[r] - s[l - 1]
           when 0 then 'draw'
           when (1..) then 'win'
           else 'lose'
           end
  puts result
end
