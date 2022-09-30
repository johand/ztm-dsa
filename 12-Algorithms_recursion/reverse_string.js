function reverse_string(str) {
  if (str.length < 2) return str;

  return reverse_string(str.slice(1)) + str.charAt(0);
}

console.log(reverse_string('yoyo master'));
