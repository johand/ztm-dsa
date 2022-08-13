strings = ["a", "b", "c", "d"]

# lookup
print(strings[2])  # => O(n)

# append
strings.append("e")  # => O(n)

# pop
strings.pop()  # => O(n)

# insert
strings.insert(0, "x")  # => O(n)
strings.insert(2, "alien")

print(strings)
