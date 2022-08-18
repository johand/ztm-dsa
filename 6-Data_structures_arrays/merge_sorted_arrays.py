def merge_sorted_lists(list1, list2):
    merge_list = []
    # i = 0
    # j = 0

    if len(list1) == 0:
        return list2

    if len(list2) == 0:
        return list1

    while list1 and list2:
        if list1[0] <= list2[0]:
            merge_list.append(list1.pop(0))
        else:
            merge_list.append(list2.pop(0))

    return merge_list + list1 + list2

    # while i < len(list1) and j < len(list2):
    #     if list1[i] < list2[j]:
    #         merge_list.append(list1[i])
    #         i += 1
    #     else:
    #         merge_list.append(list2[j])
    #         j += 1

    # return merge_list + list1[i:] + list2[j:]

    # return sorted(list1 + list2)


print(merge_sorted_lists([0, 3, 4, 31], [3, 4, 6, 30]))
