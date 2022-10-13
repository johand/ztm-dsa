# frozen_string_literal: true

class Node
  attr_accessor :left, :right, :value

  def initialize(value)
    @left = nil
    @right = nil
    @value = value
  end
end

class BreadthFirstSearch
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

  def lookup(value)
    return false if @root.nil?

    current_node = @root

    while current_node
      if value < current_node.value
        current_node = current_node.left
      elsif value > current_node.value
        current_node = current_node.right
      elsif value == current_node.value
        return current_node
      end
    end

    false
  end

  def pre_order_t(node, res = [])
    return if node.nil?

    res << node.value
    pre_order_t(node.left, res)
    pre_order_t(node.right, res)
    res
  end

  def remove(value)
    remove_n(root, value)
  end

  def bfs
    current_node = root
    result = []
    queue = []
    queue << current_node

    while queue.length.positive?
      current_node = queue.shift
      result << current_node.value

      queue << current_node.left if current_node.left
      queue << current_node.right if current_node.right
    end

    result
  end

  private

  def find_min(node)
    current_node = node
    current_node = current_node.left while current_node.left

    current_node
  end

  def remove_n(node, value)
    return node if node.nil?

    if value < node.value
      node.left = remove_n(node.left, value)
    elsif value > node.value
      node.right = remove_n(node.right, value)
    else
      return node.right if node.left.nil?
      return node.left if node.right.nil?

      min = find_min(node.right)
      node.value = min.value
      node.right = remove_n(node.right, min.value)
    end

    node
  end
end

tree = BreadthFirstSearch.new
tree.insert(9)
tree.insert(4)
tree.insert(6)
tree.insert(20)
tree.insert(170)
tree.insert(15)
tree.insert(1)
p tree.lookup(170)
p tree
p tree.pre_order_t(tree.root)
p tree.bfs
