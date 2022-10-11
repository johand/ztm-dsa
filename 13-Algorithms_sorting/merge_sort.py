class MergeSort:
    def sort(self, lst):
        if len(lst) < 2:
            return lst

        # Split list in into right and left
        mid = len(lst) // 2
        left = lst[:mid]
        right = lst[mid:]

        return self.__merge(self.sort(left), self.sort(right))

    def __merge(self, left, right):
        result = []

        while left and right:
            if left[0] <= right[0]:
                result.append(left.pop(0))
            else:
                result.append(right.pop(0))

        return result + left + right

    # def __merge(self, left, right):
    #     if not left:
    #         return right

    #     if not right:
    #         return left

    #     if result := left[0] <= right[0]:
    #         result = left.pop(0)
    #     else:
    #         result = right.pop(0)

    #     return [result] + self.__merge(left, right)


numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
m = MergeSort()
print(m.sort(numbers))
