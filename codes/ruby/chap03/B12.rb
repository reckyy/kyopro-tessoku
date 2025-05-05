n = gets.to_f
ans = (1.0..10**5).bsearch { |x|
  x ** 3 + x >= n
}
puts ans
