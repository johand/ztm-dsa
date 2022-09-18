class Node:
    def __init__(self, value):
        self.value = value
        self.next = None


class Stack:
    def __init__(self):
        self.top = None
        self.bottom = None
        self.length = 0

    def __iter__(self):
        node = self.top
        while node is not None:
            yield node
            node = node.next

    def peek(self):
        return self.top

    def push(self, value):
        new_node = Node(value)

        if self.length == 0:
            self.top = new_node
            self.bottom = new_node
        else:
            ref = self.top
            self.top = new_node
            self.top.next = ref

        self.length += 1

    def pop(self):
        if self.top is None:
            return None

        if self.top == self.bottom:
            self.bottom = None

        self.top = self.top.next
        self.length -= 1


s = Stack()
s.push("google")
s.push("udemy")
s.push("discord")
print(vars(s.peek()))
s.pop()
s.pop()
s.pop()
for n in s:
    print(vars(n))
print(vars(s))
