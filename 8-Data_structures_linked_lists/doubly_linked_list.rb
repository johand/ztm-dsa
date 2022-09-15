# frozen_string_literal: true

class Node
  attr_accessor :value, :next, :prev

  def initialize(value)
    @value = value
    @next = nil
    @prev = nil
  end
end

class DoublyLinkedList
  def initialize(value)
    @head = Node.new(value)
    @tail = @head
    @length = 1
  end

  def append(value)
    new_node = Node.new(value)
    new_node.prev = @tail
    @tail.next = new_node
    @tail = new_node
    @length += 1
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next = @head
    @head.prev = new_node
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
    new_node.prev = current_node
    new_node.next = next_node
    next_node.prev = new_node
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
      @head.prev = nil
      @length -= 1
      return
    end

    current_node = traverse_to_index(index - 1)
    target_node = current_node.next

    if target_node.next
      target_node.next.prev = target_node.prev
    else
      @tail = current_node
    end

    target_node.prev.next = target_node.next
    @length -= 1
  end
end

dll = DoublyLinkedList.new(10)
dll.append(5)
dll.append(16)
dll.prepend(1)
p dll.print_list
dll.insert(2, 99)
dll.insert(20, 88)
p dll
dll.remove(2)
dll.remove(2)
dll.remove(0)
dll.remove(4)
p dll.print_list
p dll
