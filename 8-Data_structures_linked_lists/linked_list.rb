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

  def append(value)
    new_node = Node.new(value)
    @tail.next = new_node
    @tail = new_node
    @length += 1
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next = @head
    @head = new_node
    @length += 1
  end
end

my_linked_list = LinkedList.new(10)
my_linked_list.append(5)
my_linked_list.append(16)
my_linked_list.prepend(1)
p my_linked_list
