n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
index = (1..10**9).bsearch { |x|
  leafets = 0
  a.each { |num| leafets += x / num }
  leafets >= k
}
puts index
