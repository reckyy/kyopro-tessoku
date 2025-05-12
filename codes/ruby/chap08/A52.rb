q = gets.to_i
lines = []
q.times do
  query = gets.chomp.split
  case query[0].to_i
  when 1
    lines << query[1]
  when 2
    puts lines[0]
  when 3
    lines.shift
  end
end
