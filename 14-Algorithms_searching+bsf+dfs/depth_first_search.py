class Node:
    def __init__(self, value):
        self.left = None
        self.right = None
        self.value = value


class DepthFirstSearch:
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

    def remove(self, value):
        return self.__remove_n(self.root, value)

    def in_order(self):
        return self.__in_order_t(self.root, [])

    def pre_order(self):
        return self.__pre_order_t(self.root, [])

    def post_order(self):
        return self.__post_order_t(self.root, [])

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

    def __in_order_t(self, node, res):
        if node:
            self.__in_order_t(node.left, res)
            res.append(node.value)
            self.__in_order_t(node.right, res)

        return res

    def __pre_order_t(self, node, res):
        if node:
            res.append(node.value)
            self.__pre_order_t(node.left, res)
            self.__pre_order_t(node.right, res)

        return res

    def __post_order_t(self, node, res):
        if node:
            self.__post_order_t(node.left, res)
            self.__post_order_t(node.right, res)
            res.append(node.value)

        return res


tree = DepthFirstSearch()
tree.insert(9)
tree.insert(4)
tree.insert(6)
tree.insert(20)
tree.insert(170)
tree.insert(15)
tree.insert(1)
print(tree.lookup(170))
print(tree.in_order())
print(tree.pre_order())
print(tree.post_order())
