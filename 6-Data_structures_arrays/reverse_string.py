def reverse_string(input):
    if type(input) != str or len(input) < 2:
        return "hmm that is not good"

    result = []

    for i in range(len(input) - 1, -1, -1):
        result.append(input[i])

    return "".join(result)

    # input = [input[i] for i in range(len(input) - 1, -1, -1)]
    # return "".join(input)


input = "hello my name is Foo"
print(reverse_string(input))
