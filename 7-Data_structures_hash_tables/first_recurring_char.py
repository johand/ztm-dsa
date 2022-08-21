def first_recurring_character(input):
    # dict = {}

    # for i, e in enumerate(input):
    #     if e in dict is not None:
    #         return e
    #     else:
    #         dict[e] = i

    # return None

    # for i in range(len(input)):
    #     if input[i] in dict is not None:
    #         return input[i]
    #     else:
    #         dict[input[i]] = i

    # return None

    for i in range(0, len(input)):
        for j in range(i + 1, len(input)):
            if input[i] == input[j]:
                return input[i]

    return None


print(first_recurring_character([2, 5, 1, 2, 3, 5, 1, 2, 4]))
# print(first_recurring_character([2, 5, 1, 2, 3, 5, 1, 2, 4]))
