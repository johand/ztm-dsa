class Node {
  constructor(value) {
    this.value = value;
    this.next = null;
    this.prev = null;
  }
}

class DoublyLinkedList {
  constructor(value) {
    this.head = new Node(value);
    this.tail = this.head;
    this.length = 1;
  }

  append(value) {
    const newNode = new Node(value);
    newNode.prev = this.tail;
    this.tail.next = newNode;
    this.tail = newNode;
    this.length++;
  }

  prepend(value) {
    const newNode = new Node(value);
    newNode.next = this.head;
    this.head.prev = newNode;
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
    newNode.prev = currentNode;
    newNode.next = nextNode;
    nextNode.prev = newNode;
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
      this.head.prev = null;
      this.length--;
      return;
    }

    const currentNode = this.traverseToIndex(index - 1);
    const targetNode = currentNode.next;

    if (targetNode.next) {
      targetNode.next.prev = targetNode.prev;
    } else {
      this.tail = currentNode;
    }

    targetNode.prev.next = targetNode.next;
    this.length--;
  }
}

const dll = new DoublyLinkedList(10);
dll.append(5);
dll.append(16);
dll.prepend(1);
console.log(dll.printList());
dll.insert(2, 99);
dll.insert(20, 88);
console.log(dll);
dll.remove(2);
dll.remove(2);
dll.remove(0);
dll.remove(4);
console.log(dll.printList());
console.log(dll);
