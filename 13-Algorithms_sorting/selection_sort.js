const selectionSort = arr => {
  const length = arr.length;

  for (let i = 0; i < length; i++) {
    // set current index as minimum
    let min = i;

    for (let j = i + 1; j < length; j++) {
      if (arr[j] < arr[min]) {
        // update minimum if current is lower that what we had previously
        min = j;
      }
    }

    [arr[i], arr[min]] = [arr[min], arr[i]];
  }

  return arr;
};

const numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0];
console.log(selectionSort(numbers));
