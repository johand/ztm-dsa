# frozen_string_literal: true

class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  def initialize(value)
    @head = Node.new(value)
    @tail = @head
    @length = 1
  end

  def append(value); end
end

my_linked_list = LinkedList.new(10)
p my_linked_list
