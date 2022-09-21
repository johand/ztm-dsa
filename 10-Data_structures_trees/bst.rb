# frozen_string_literal: true

class Node
  attr_accessor :left, :right, :value

  def initialize(value)
    @left = nil
    @right = nil
    @value = value
  end
end

class Bst
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(value)
    new_node = Node.new(value)

    if @root.nil?
      @root = new_node
    else
      current_node = @root

      while true
        if value < current_node.value
          # Left
          return current_node.left = new_node unless current_node.left

          current_node = current_node.left
        end

        next unless value >= current_node.value
        # Right
        return current_node.right = new_node unless current_node.right

        current_node = current_node.right
      end
    end
  end

  def pre_order_t(node, res = [])
    return if node.nil?

    res << node.value
    pre_order_t(node.left, res)
    pre_order_t(node.right, res)
    res
  end
end

tree = Bst.new
tree.insert(9)
tree.insert(4)
tree.insert(6)
tree.insert(20)
tree.insert(170)
tree.insert(15)
tree.insert(1)
p tree
p tree.pre_order_t(tree.root)
