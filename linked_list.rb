class Node
  attr_accessor :value, :next_node

  def initialize(val = nil, nxt_nd = nil)
    @value = val
    @next_node = nxt_nd
  end
end

class LinkedList
  attr_reader :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(val)
    self.size += 1
    head.nil? ? self.head = self.tail = Node.new(val) : self.tail = tail.next_node = Node.new(val)
  end

  def prepend(val)
    self.size += 1
    head.nil? ? self.head = self.tail = Node.new(val) : self.head = Node.new(val, head)
  end

  def at(index)
    return nil if index > size

    node = head
    index.times { node = node.next_node }
    node
  end

  def pop
    return nil if head.nil?

    if size == 1
      val = tail.value
      self.tail = self.head = nil
      self.size = 0
      return val
    end

    val = tail.value
    self.tail = at(size - 2)
    tail.next_node = nil
    self.size -= 1
    val
  end

  private

  attr_writer :head, :tail, :size
end
