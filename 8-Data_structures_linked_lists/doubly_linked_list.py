class Node:
    def __init__(self, value):
        self.value = value
        self.next = None
        self.prev = None


class DoublyLinkedList:
    def __init__(self, value):
        self.head = Node(value)
        self.tail = self.head
        self.length = 1

    def __iter__(self):
        node = self.head
        while node is not None:
            yield node
            node = node.next

    def append(self, value):
        new_node = Node(value)
        new_node.prev = self.tail
        self.tail.next = new_node
        self.tail = new_node
        self.length += 1

    def prepend(self, value):
        new_node = Node(value)
        new_node.next = self.head
        self.head.prev = new_node
        self.head = new_node
        self.length += 1

    def print_list(self):
        lst = []
        current_node = self.head

        while current_node is not None:
            lst.append(current_node.value)
            current_node = current_node.next

        return lst

    def insert(self, index, value):
        if index >= self.length:
            return self.append(value)

        if index == 0:
            return self.prepend(value)

        new_node = Node(value)
        current_node = self.traverse_to_index(index - 1)
        next_node = current_node.next
        current_node.next = new_node
        new_node.prev = current_node
        new_node.next = next_node
        next_node.prev = new_node
        self.length += 1

    def traverse_to_index(self, index):
        counter = 0
        current_node = self.head

        while counter != index:
            current_node = current_node.next
            counter += 1

        return current_node

    def remove(self, index):
        if index > self.length:
            print("Index not found")
            return

        if index == 0:
            self.head = self.head.next
            self.head.prev = None
            self.length -= 1
            return

        current_node = self.traverse_to_index(index - 1)
        target_node = current_node.next

        if target_node.next:
            target_node.next.prev = target_node.prev
        else:
            self.tail = current_node

        target_node.prev.next = target_node.next
        self.length -= 1


dll = DoublyLinkedList(10)
dll.append(5)
dll.append(16)
dll.prepend(1)
print(dll.print_list())
dll.insert(2, 99)
dll.insert(20, 88)
for n in dll:
    print(vars(n))
print(f"Length: {dll.length}")
dll.remove(2)
dll.remove(2)
dll.remove(0)
dll.remove(4)
print(dll.print_list())
for n in dll:
    print(vars(n))
print(f"Length: {dll.length}")
