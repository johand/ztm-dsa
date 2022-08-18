function containsCommonItem(arr1, arr2) {
  // Loop through first array and create object where properties === items in the
  // array
  let map = {};

  for (let i = 0; i < arr1.length; ++i) {
    if (!map[arr1[i]]) {
      const item = arr1[i];
      map[item] = true;
    }
  }

  // loop through second array and check if item in second array exists on created
  // object
  for (let j = 0; j < arr2.length; ++j) {
    if (map[arr2[j]]) {
      return true;
    }
  }

  return false;
}

// O(a + b) Time Complexity
const array1 = ['a', 'b', 'c', 'x'];
const array2 = ['z', 'y', 'a'];

const result = containsCommonItem(array1, array2);
console.log(result);

// function containsCommonItem2(arr1, arr2) {
//   return arr1.some(item => arr2.include(item));
// }
//
// const result = containsCommonItem(array1, array2);
// console.log(result);
