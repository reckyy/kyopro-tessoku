a, b = gets.split.map(&:to_i)
mod = 10**9 + 7
result = 1
a %= mod
while b > 0
  result = (result * a) % mod if b.odd?
  a = (a * a) % mod
  b >>= 1
end
puts result
