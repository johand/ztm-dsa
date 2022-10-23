def add_to_80(n):
    return n + 80


def memoized():
    cache = {}

    def memo(n):
        if n in cache:
            return cache[n]

        print("long time")
        cache[n] = n + 80
        return cache[n]

    return memo


mem = memoized()
print(mem(6))
print(mem(6))
