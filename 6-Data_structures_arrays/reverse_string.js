const reverseString = str => {
  if (!str || str.length < 2 || typeof str !== 'string') {
    return 'hmm that is not good';
  }

  const result = [];

  for (let i = str.length - 1; i >= 0; i--) {
    result.push(str[i]);
  }

  return result.join('');
};

// const reverseString = str => str.split('').reverse().join('');

str = 'hello my name is Foo';
console.log(reverse(str));
