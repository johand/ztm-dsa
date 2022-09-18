class Stack
  def initialize
    @arr = []
  end

  def peek
    @arr.last
  end

  def push(value)
    @arr << value
  end

  def pop
    @arr.pop
  end
end

s = Stack.new
s.push('google')
s.push('udemy')
s.push('discord')
puts s.peek
s.pop
s.pop
s.pop
p s
