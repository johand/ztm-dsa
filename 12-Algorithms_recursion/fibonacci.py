# Given a number N return the index value of the Fibonacci sequence, where the
# sequence is:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144 ...
# the pattern of the sequence is that each value is the sum of the 2 previous
# values, that means that for N=5 → 2+3

# For example: fibonacci(6) should return 8

# O(2^n)
def fibonacci(n):
    if n < 2:
        return n

    return fibonacci(n - 1) + fibonacci(n - 2)


print(fibonacci(10))
