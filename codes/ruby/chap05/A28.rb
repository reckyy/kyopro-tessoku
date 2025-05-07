n = gets.to_i
ans = 0
n.times do
  t, a = gets.chomp.split
  a = a.to_i
  case t
  when '+' then ans += a
  when '-' then ans -= a
  when '*' then ans *= a
  end
  ans %= 10000
  puts ans
end
