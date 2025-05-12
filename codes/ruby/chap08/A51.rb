q = gets.to_i
books = []
q.times do
  query = gets.chomp.split
  case query[0].to_i
  when 1
    books << query[1]
  when 2
    puts books[-1]
  when 3
    books.pop
  end
end
