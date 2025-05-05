n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)
p = a.product(b).map { |x, y| x + y }
q = c.product(d).map { |x, y| x + y }
q.sort!
p.each do |x|
  target = k - x
  if q.bsearch { |y| y >= target } == target
    puts 'Yes'
    exit
  end
end
puts 'No'
