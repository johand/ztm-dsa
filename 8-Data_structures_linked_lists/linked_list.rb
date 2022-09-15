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
    if index > @length
      puts 'Index not found'
      return
    end

    if index.zero?
      @head = @head.next
      @length -= 1
      return
    end

    current_node = traverse_to_index(index - 1)
    @tail = current_node if current_node.next.next.nil?
    current_node.next = current_node.next.next
    @length -= 1
  end

  def reverse
    return @head unless @head.next

    prev = nil
    current = @head
    next_node = @head.next

    while next_node
      next_node = current.next
      current.next = prev
      prev = current
      current = next_node
    end

    @head = prev
    print_list
  end
end

ll = LinkedList.new(10)
ll.append(5)
ll.append(16)
ll.prepend(1)
p ll.print_list
ll.insert(2, 99)
ll.insert(20, 88)
p ll
ll.remove(2)
ll.remove(2)
ll.remove(0)
ll.remove(4)
p ll.print_list
p ll.reverse
