class Node:
    def __init__(self, value):
        self.left = None
        self.right = None
        self.value = value


class Bst:
    def __init__(self):
        self.root = None

    def __iter__(self):
        node = self.root
        while node is not None:
            if node.left is not None:
                yield from node.left
                node = node.left
                # return
            if node.right is not None:
                yield node.right
                node = node.right
                # return

    def insert(self, value):
        new_node = Node(value)

        if self.root is None:
            self.root = new_node
        else:
            current_node = self.root

            while True:
                if value < current_node.value:
                    # Left
                    if current_node.left is None:
                        current_node.left = new_node
                        return

                    current_node = current_node.left

                if value >= current_node.value:
                    # Right
                    if current_node.right is None:
                        current_node.right = new_node
                        return

                    current_node = current_node.right

    def pre_order_t(self, node, res=[]):
        if node is not None:
            res.append(node.value)
            self.pre_order_t(node.left)
            self.pre_order_t(node.right)
            return res


tree = Bst()
tree.insert(9)
tree.insert(4)
tree.insert(6)
tree.insert(20)
tree.insert(170)
tree.insert(15)
tree.insert(1)
print(tree.pre_order_t(tree.root))
