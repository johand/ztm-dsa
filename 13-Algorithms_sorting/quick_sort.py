class QuickSort:
    def __init__(self, lst):
        self.lst = lst

    def qsort(self, left=0, right=None):
        if not self.lst:
            return self.lst

        if right is None:
            right = len(self.lst) - 1

        if left < right:
            mid = (left + right) // 2
            pivot = self.__partition(left, right, mid)

            self.qsort(left, pivot - 1)
            self.qsort(pivot + 1, right)

        return self.lst

    def __partition(self, left, right, mid):
        pivot = self.lst[mid]
        self.__swap(mid, right)

        for i in range(left, right):
            if self.lst[i] <= pivot:
                self.__swap(i, left)
                left += 1

        self.__swap(left, right)
        return left

    def __swap(self, one, two):
        self.lst[one], self.lst[two] = self.lst[two], self.lst[one]


numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
qs = QuickSort(numbers)
print(qs.qsort())
