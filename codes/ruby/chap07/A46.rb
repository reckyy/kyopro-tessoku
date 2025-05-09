n = gets.to_i
points = []
n.times do
  x, y = gets.split.map(&:to_i)
  points << [x, y]
end
visited = Set.new([0])
current_index = 0
path = [0]
(n - 1).times do
  current = points[current_index]
  _, next_index = points.each_with_index
    .reject { |_, i| visited.include?(i) }
    .min_by { |(x, y), _| Math.sqrt((current[0] - x)**2 + (current[1] - y)**2) }

  visited << next_index
  path << next_index
  current_index = next_index
end
path << path.first
puts path.map { |i| i + 1 }
