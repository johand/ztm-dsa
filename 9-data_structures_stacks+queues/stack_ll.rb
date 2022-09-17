# frozen_string_literal: true

class Node
  attr_accessor :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class Stack
  def initialize
    @top = nil
    @bottom = nil
    @length = 0
  end

  def peek
    @top
  end

  def push(value)
    new_node = Node.new(value)

    if @length.zero?
      @top = new_node
      @bottom = new_node
    else
      ref = @top
      @top = new_node
      @top.next = ref
    end

    @length += 1
  end

  def pop
    return nil if @top.nil?

    @bottom = nil if @top == @bottom

    @top = @top.next
    @length -= 1
  end
end

s = Stack.new
s.push('google')
s.push('udemy')
s.push('discord')
p s.peek
s.pop
s.pop
s.pop
p s
