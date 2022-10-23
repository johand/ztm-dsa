const addTo80 = n => n + 80;

let cache = {};

const memoized = n => {
  if (n in cache) return cache[n];

  console.log('long time');
  return (cache[n] = n + 80);
};

console.log(1, memoized(6));
console.log(2, memoized(6));
