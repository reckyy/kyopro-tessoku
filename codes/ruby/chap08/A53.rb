class MinHeap
  def initialize(source)
    @arr = []
    source.each do |e|
      push(e)
    end
  end

  def size
    @arr.size
  end

  def empty?
    @arr.empty?
  end

  def top
    @arr.first
  end

  def push(value)
    @arr << value
    i = @arr.size - 1
 
    while i > 0
      parent = (i - 1) / 2

      break if @arr[parent] <= value

      @arr[parent], @arr[i] = @arr[i], @arr[parent]

      i = parent
    end

    @arr[i] = value
  end

  def pop
    min = top

    tmp_node = @arr.last
    @arr.pop

    i = 0
    while (i * 2 + 1) < size
      lhs_child = i * 2 + 1
      rhs_child = i * 2 + 2
      min_child = lhs_child

      if rhs_child < size

        if @arr[lhs_child] > @arr[rhs_child]
          min_child = rhs_child
        end
      end

      break if @arr[min_child] >= tmp_node

      @arr[i] = @arr[min_child]
      i = min_child
    end

    @arr[i] = tmp_node unless empty?

    min
  end
end

q = gets.to_i
heap = MinHeap.new([])
q.times do
  query = gets.split.map(&:to_i)
  case query[0]
  when 1
    heap.push(query[1])
  when 2
    puts heap.top
  when 3
    heap.pop
  end
end
