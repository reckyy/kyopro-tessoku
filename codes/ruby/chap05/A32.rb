n, a, b = gets.split.map(&:to_i)
dp = Array.new(n + 1, false)
(1..n).each do |i|
  win_by_a = i - a >= 0 && !dp[i - a]
  win_by_b = i - b >= 0 && !dp[i - b]
  dp[i] = win_by_a || win_by_b
end

puts dp[n] ? "First" : "Second"
