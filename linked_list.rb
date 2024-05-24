class Node
  attr_accessor :value, :next_node

  def initialize(val = nil, nxt_nd = nil)
    @value = val
    @next_node = nxt_nd
  end
end

class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(val)
    head.nil? ? self.head = self.tail = Node.new(val) : self.tail = tail.next_node = Node.new(val)
  end

  private

  attr_writter :head, :tail
end
