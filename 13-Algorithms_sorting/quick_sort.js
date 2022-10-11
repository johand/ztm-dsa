class Quicksort {
  constructor(arr) {
    this.arr = arr;
  }

  qSort(left = 0, right = this.arr.length - 1) {
    if (!this.arr.length) return this.arr;

    if (left < right) {
      const mid = Math.floor((left + right) / 2);
      const pivot = this.#partition(left, right, mid);

      this.qSort(left, pivot - 1);
      this.qSort(pivot + 1, right);
    }

    return this.arr;
  }

  #partition(left, right, mid) {
    const pivot = this.arr[mid];
    this.#swap(mid, right);

    for (let i = left; i < right; i += 1) {
      if (this.arr[i] <= pivot) {
        this.#swap(i, left);
        left += 1;
      }
    }

    this.#swap(left, right);
    return left;
  }

  #swap(one, two) {
    [this.arr[one], this.arr[two]] = [this.arr[two], this.arr[one]];
  }
}

const numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0];
qs = new Quicksort(numbers);
console.log(qs.qSort());
