n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ans = 0
index = 0
(0...n).each do |i|
  while index < n && a[index] - a[i] <= k
    index += 1
  end
  ans += index - i - 1 
end
puts ans
