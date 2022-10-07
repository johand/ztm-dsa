class MergeSort {
  sort(arr) {
    if (arr.length < 2) return arr;

    // Split array in into right and left
    const mid = Math.floor(arr.length / 2);
    const left = arr.slice(0, mid);
    const right = arr.slice(mid);

    return this.#merge(this.sort(left), this.sort(right));
  }

  #merge(left, right) {
    if (!left.length) return right;
    if (!right.length) return left;
    const result = [];

    left[0] <= right[0]
      ? result.push(left.shift())
      : result.push(right.shift());

    return [...result, ...this.#merge(left, right)];
  }

  // merge(left, right) {
  //   const result = [];
  //
  //   while (left.length && right.length) {
  //     if (left[0] <= right[0]) {
  //       result.push(left.shift());
  //     } else {
  //       result.push(right.shift());
  //     }
  //   }
  //
  //   return [...result, ...left, ...right];
  // }
}

const numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0];
const m = new MergeSort();
console.log(m.sort(numbers));
