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

  private

  attr_writer :head, :tail, :size
end
