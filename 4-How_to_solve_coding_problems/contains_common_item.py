def contains_common_item(lst1, lst2):
    # Loop through first list and create object where properties === items in
    # the array
    dict = {}

    for i in lst1:
        if i not in dict:
            dict[i] = True

    # loop through second list and check if item in second list exists on
    # created object
    for j in lst2:
        if j in dict:
            return True

    return False


# O(a + b) Time Complexity
list1 = ["a", "b", "c", "x"]
list2 = ["z", "y", "a"]

result = contains_common_item(list1, list2)
print(result)


# def contains_common_item2(lst1, lst2):
#     if set(lst1) & set(lst2):
#         return True

#     return False


# result = contains_common_item2(list1, list2)
# print(result)
