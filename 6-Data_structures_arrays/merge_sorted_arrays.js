const mergeSortedArrays = (array1, array2) => {
  const mergedArray = [];
  let array1Item = array1[0];
  let arrat2Item = array2[0];
  let i = 1;
  let j = 1;

  if (array1.length === 0) return array2;
  if (array2.length === 0) return array1;

  while (array1Item || arrat2Item) {
    if (arrat2Item === undefined || array1Item < arrat2Item) {
      mergedArray.push(array1Item);
      array1Item = array1[i];
      i++;
    } else {
      mergedArray.push(arrat2Item);
      arrat2Item = array2[j];
      j++;
    }
  }

  console.log(mergedArray);

  // return [...array1, ...array2].sort((a, b) => a - b);
};

console.log(mergeSortedArrays([0, 3, 4, 31], [3, 4, 6, 30]));
