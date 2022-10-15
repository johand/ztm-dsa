def add_to_80(n):
    return n + 80


cache = {}


def memoized(n):
    if n in cache:
        return cache[n]

    print("long time")
    cache[n] = n + 80
    return cache[n]


print(memoized(6))
print(memoized(6))
