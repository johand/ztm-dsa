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
        list = []
        current_node = self.head

        while current_node is not None:
            list.append(current_node.value)
            current_node = current_node.next

        return list

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


my_linked_list = LinkedList(10)
my_linked_list.append(5)
my_linked_list.append(16)
my_linked_list.prepend(1)
print(my_linked_list.print_list())
my_linked_list.insert(2, 99)
my_linked_list.insert(20, 88)
for n in my_linked_list:
    print(vars(n))
print(my_linked_list.print_list())
