class Stack:
    def __init__(self):
        self.lst = []

    def peek(self):
        if len(self.lst) == 0:
            return None

        return self.lst[-1]

    def push(self, value):
        self.lst.append(value)

    def pop(self):
        if len(self.lst) == 0:
            return None

        self.lst.pop()


s = Stack()
s.push("google")
s.push("udemy")
s.push("discord")
print(s.peek())
s.pop()
s.pop()
s.pop()
print(vars(s))
