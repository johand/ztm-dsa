const bubbleSort = arr => {
  const length = arr.length;

  for (let i = 0; i < length; i++) {
    for (let j = 0; j < length; j++) {
      if (arr[j] > arr[j + 1]) {
        // Swap numbers
        const temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }

  return arr;
};

const numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0];
console.log(bubbleSort(numbers));
