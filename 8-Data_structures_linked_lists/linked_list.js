class Node {
  constructor(value) {
    this.value = value;
    this.next = null;
  }
}

class LinkedList {
  constructor(value) {
    this.head = new Node(value);
    this.tail = this.head;
    this.length = 1;
  }

  append(value) {
    const newNode = new Node(value);
    this.tail.next = newNode;
    this.tail = newNode;
    this.length++;
  }

  prepend(value) {
    const newNode = new Node(value);
    newNode.next = this.head;
    this.head = newNode;
    this.length++;
  }

  printList() {
    const array = [];
    let currentNode = this.head;

    while (currentNode !== null) {
      array.push(currentNode.value);
      currentNode = currentNode.next;
    }

    return array;
  }

  insert(index, value) {
    if (index >= this.length) {
      return this.append(value);
    }

    if (index === 0) {
      return this.prepend(value);
    }

    const newNode = new Node(value);
    const currentNode = this.traverseToIndex(index - 1);
    const nextNode = currentNode.next;
    currentNode.next = newNode;
    newNode.next = nextNode;
    this.length++;
  }

  traverseToIndex(index) {
    let counter = 0;
    let currentNode = this.head;

    while (counter !== index) {
      currentNode = currentNode.next;
      counter++;
    }

    return currentNode;
  }

  remove(index) {
    if (index > this.length) {
      console.log('Index not found');
      return;
    }

    if (index === 0) {
      this.head = this.head.next;
      this.length--;
      return;
    }

    const currentNode = this.traverseToIndex(index - 1);

    if (currentNode.next.next === null) {
      this.tail = currentNode;
    }

    currentNode.next = currentNode.next.next;
    this.length--;
  }
}

const ll = new LinkedList(10);
ll.append(5);
ll.append(16);
ll.prepend(1);
console.log(ll.printList());
ll.insert(2, 99);
ll.insert(20, 88);
console.log(ll);
ll.remove(2);
ll.remove(2);
ll.remove(0);
ll.remove(4);
console.log(ll.printList());
