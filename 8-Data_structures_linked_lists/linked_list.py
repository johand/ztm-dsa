class Node:
    def __init__(self, value):
        self.value = value
        self.next = None


class LinkedList:
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
        self.tail.next = new_node
        self.tail = new_node
        self.length += 1

    def prepend(self, value):
        new_node = Node(value)
        new_node.next = self.head
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
        new_node.next = next_node
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
            new_head = self.head = self.head.next
            self.length -= 1
            return new_head

        current_node = self.traverse_to_index(index - 1)
        current_node.next = current_node.next.next
        self.length -= 1


ll = LinkedList(10)
ll.append(5)
ll.append(16)
ll.prepend(1)
print(ll.print_list())
ll.insert(2, 99)
ll.insert(20, 88)
for n in ll:
    print(vars(n))
print(f"Length: {ll.length}")
ll.remove(2)
ll.remove(2)
ll.remove(0)
ll.remove(4)
print(ll.print_list())
