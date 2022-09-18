class Stack {
  constructor() {
    this.array = [];
  }

  peek() {
    if (this.array.length === 0) {
      return null;
    }

    return this.array[this.array.length - 1];
  }

  push(value) {
    this.array.push(value);
    return this;
  }

  pop() {
    this.array.pop();
    return this;
  }
}

const s = new Stack();
s.push('google');
s.push('udemy');
s.push('discord');
console.log(s.peek());
s.pop();
s.pop();
s.pop();
console.log(s);
