def selection_sort(lst):
    if len(lst) < 2:
        return lst

    for i in range(len(lst) - 1):
        min_idx = i

        for j in range(i + 1, len(lst)):
            if lst[j] < lst[min_idx]:
                # update minimum if current is lower that what we had
                # previously
                min_idx = j

        if min_idx != i:
            lst[i], lst[min_idx] = lst[min_idx], lst[i]

    return lst


numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
print(selection_sort(numbers))
