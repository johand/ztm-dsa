def show_all_pairs(list):
    for i in list:
        for j in list:
            print(i, j)


boxes = ["a", "b", "c", "d", "e"]
show_all_pairs(boxes)  # => O(n^2)
