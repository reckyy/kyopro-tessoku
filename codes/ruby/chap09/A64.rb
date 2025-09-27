class MinHeap
  def initialize(source = [])
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

    while i.positive?
      parent = (i - 1) / 2
      break if (@arr[parent] <=> value) <= 0

      @arr[i] = @arr[parent]
      i = parent
    end

    @arr[i] = value
  end

  def pop
    return nil if @arr.empty?

    min = @arr[0]
    x = @arr.pop
    unless @arr.empty?
      i = 0
      while (l = i * 2 + 1) < @arr.size
        r = l + 1
        c = r < @arr.size && (@arr[r] <=> @arr[l]).negative? ? r : l
        break if (x <=> @arr[c]) <= 0

        @arr[i] = @arr[c]
        i = c
      end
      @arr[i] = x
    end
    min
  end
end

def gc = gets.chomp
def gi = gets.to_i
def gsm = gets.split.map(&:to_i)
def gcc = gets.chomp.chars

n, m = gsm
g = Array.new(n+1) { [] }
m.times do
  a, b, c = gsm
  g[a] << [b, c]
  g[b] << [a, c]
end
dist = Array.new(n+1, Float::INFINITY)
dist[1] = 0
heap = MinHeap.new
heap.push([0, 1]) # [距離, 頂点]を辞書順で比較

until heap.empty?
  d, u = heap.pop
  next if d > dist[u] # 古い[距離, 頂点]の情報が入っている可能性があるから。

  g[u].each do |v, w|
    nd = d + w
    if nd < dist[v]
      dist[v] = nd
      heap.push([nd, v])
    end
  end
end
(1..n).each { |i| puts dist[i].infinite? ? -1 : dist[i] }

