import time


def find_nemo(lst):
    t0 = time.time()

    for i in range(len(lst)):
        if lst[i] == "nemo":
            print("Found NEMO!")

    t1 = time.time()
    print(f"Call to find nemo took {(t1 - t0) * 1000} Milliseconds")


nemo = ["nemo"]
everyone = [
    "dory",
    "bruce",
    "marlin",
    "nemo",
    "gill",
    "bloat",
    "nigel",
    "squirt",
    "darla",
    "hank",
]

large = ["nemo" for i in range(100000)]
find_nemo(large)
