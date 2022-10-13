class Node:
    def __init__(self, value):
        self.left = None
        self.right = None
        self.value = value


class BreadthFirstSearch:
    def __init__(self):
        self.root = None

    def __iter__(self):
        node = self.root
        while node is not None:
            if node.left is not None:
                yield from node.left
                node = node.left

            if node.right is not None:
                yield node.right
                node = node.right

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

    def lookup(self, value):
        if self.root is None:
            return False

        current_node = self.root

        while current_node:
            if value < current_node.value:
                current_node = current_node.left
            elif value > current_node.value:
                current_node = current_node.right
            elif value == current_node.value:
                return vars(current_node)

        return False

    def pre_order_t(self, node, res=[]):
        if node is not None:
            res.append(node.value)
            self.pre_order_t(node.left)
            self.pre_order_t(node.right)
            return res

    def remove(self, value):
        return self.__remove_n(self.root, value)

    def bfs(self):
        current_node = self.root
        result = []
        queue = []
        queue.append(current_node)

        while queue:
            current_node = queue.pop(0)
            result.append(current_node.value)

            if current_node.left:
                queue.append(current_node.left)

            if current_node.right:
                queue.append(current_node.right)

        return result

    def __find_min(self, node):
        current_node = node

        while current_node.left:
            current_node = current_node.left

        return current_node

    def __remove_n(self, node, value):
        if node is None:
            return node

        if value < node.value:
            node.left = self.__remove_n(node.left, value)
        elif value > node.value:
            node.right = self.__remove_n(node.right, value)
        else:
            if node.left is None:
                return node.right

            if node.right is None:
                return node.left

            min = self.__find_min(node.right)
            node.value = min.value
            node.right = self.__remove_n(node.right, min.value)

        return node


tree = BreadthFirstSearch()
tree.insert(9)
tree.insert(4)
tree.insert(6)
tree.insert(20)
tree.insert(170)
tree.insert(15)
tree.insert(1)
print(tree.lookup(170))
print(tree.pre_order_t(tree.root))
print(tree.bfs())
