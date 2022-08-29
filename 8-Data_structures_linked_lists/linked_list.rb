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

  def print_list
    array = []
    current_node = @head

    until current_node.nil?
      array << current_node.value
      current_node = current_node.next
    end

    array
  end

  def insert(index, value)
    return append(value) if index >= @length
    return prepend(value) if index.zero?

    new_node = Node.new(value)
    current_node = traverse_to_index(index - 1)
    next_node = current_node.next
    current_node.next = new_node
    new_node.next = next_node
    @length += 1
  end

  def traverse_to_index(index)
    counter = 0
    current_node = @head

    while counter != index
      current_node = current_node.next
      counter += 1
    end

    current_node
  end

  def remove(index)
    return @head = @head.next if index.zero?

    current_node = traverse_to_index(index - 1)
    current_node.next = current_node.next.next
  end
end

my_linked_list = LinkedList.new(10)
my_linked_list.append(5)
my_linked_list.append(16)
my_linked_list.prepend(1)
p my_linked_list.print_list
my_linked_list.insert(2, 99)
my_linked_list.insert(20, 88)
p my_linked_list
p my_linked_list.print_list
