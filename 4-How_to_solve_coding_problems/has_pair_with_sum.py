def has_pair_with_sum(lst, sum):
    my_set = set()

    for i in lst:
        if i in my_set:
            return True

        my_set.add(sum - i)

    return False


print(has_pair_with_sum([6, 4, 3, 2, 1, 7], 9))
