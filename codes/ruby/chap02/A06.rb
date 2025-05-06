n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
s = [0]
a.each_with_index { |x, i| s << s[i] + x }
q.times do
  l, r = gets.split.map(&:to_i)
  puts s[r] - s[l - 1]
end
