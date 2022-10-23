const addTo80 = n => n + 80;

const memoizedAddTo80 = () => {
  let cache = {};

  return n => {
    if (n in cache) return cache[n];

    console.log('long time');
    return (cache[n] = n + 80);
  };
};

const memoized = memoizedAddTo80();
console.log(1, memoized(6));
console.log(2, memoized(6));
