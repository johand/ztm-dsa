def bubble_sort(lst):
    if len(lst) < 2:
        return lst

    for _i in range(len(lst) - 1):
        for j in range(len(lst) - 1):
            if lst[j] > lst[j + 1]:
                lst[j], lst[j + 1] = lst[j + 1], lst[j]
    return lst


numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
print(bubble_sort(numbers))
