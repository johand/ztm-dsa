# frozen_string_literal: true

class Node
  attr_accessor :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class Queue
  def initialize
    @first = nil
    @last = nil
    @length = 0
  end

  def peek
    @first
  end

  def enqueue(value)
    new_node = Node.new(value)

    if @length.zero?
      @first = new_node
    else
      @last.next = new_node
    end

    @last = new_node
    @length += 1
  end

  def dequeue
    return nil unless @first

    @last = nil if @first == @last

    @first = @first.next
    @length -= 1
  end
end

q = Queue.new
q.enqueue('Joy')
q.enqueue('Matt')
q.enqueue('Pavel')
q.enqueue('Samir')
p q.peek
q.dequeue
q.dequeue
q.dequeue
q.dequeue
p q
