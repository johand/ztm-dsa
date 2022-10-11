def insertion_sort(lst):
    if len(lst) < 2:
        return lst

    for i in range(len(lst) - 1):
        j = i + 1

        while lst[j] < lst[j - 1]:
            if j == 0:
                break

            lst[j], lst[j - 1] = lst[j - 1], lst[j]
            j -= 1

    return lst


numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
print(insertion_sort(numbers))
