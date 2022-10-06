const insertionSort = arr => {
  for (let i = 0; i < arr.length; i++) {
    let j = i + 1;

    while (arr[j] < arr[j - 1]) {
      [arr[j], arr[j - 1]] = [arr[j - 1], arr[j]];
      j--;
    }
  }

  return arr;
};

const numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0];
console.log(insertionSort(numbers));
