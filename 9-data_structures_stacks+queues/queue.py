class Node:
    def __init__(self, value):
        self.value = value
        self.next = None


class Queue:
    def __init__(self):
        self.first = None
        self.last = None
        self.length = 0

    def __iter__(self):
        node = self.first
        while node is not None:
            yield node
            node = node.next

    def peek(self):
        return self.first

    def enqueue(self, value):
        new_node = Node(value)

        if self.length == 0:
            self.first = new_node
        else:
            self.last.next = new_node

        self.last = new_node
        self.length += 1

    def dequeue(self):
        if self.first is None:
            return None

        if self.first == self.last:
            self.last = None

        self.first = self.first.next
        self.length -= 1


q = Queue()
q.enqueue("Joy")
q.enqueue("Matt")
q.enqueue("Pavel")
q.enqueue("Samir")
print(vars(q.peek()))
q.dequeue()
q.dequeue()
q.dequeue()
q.dequeue()
for n in q:
    print(vars(n))
print(vars(q))
