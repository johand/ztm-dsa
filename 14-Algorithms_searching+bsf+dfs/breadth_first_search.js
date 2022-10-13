class Node {
  constructor(value) {
    this.left = null;
    this.right = null;
    this.value = value;
  }
}

class BreadthFirstSearch {
  constructor() {
    this.root = null;
  }

  insert(value) {
    const newNode = new Node(value);

    if (this.root === null) {
      this.root = newNode;
    } else {
      let currentNode = this.root;

      while (true) {
        if (value < currentNode.value) {
          // Left
          if (!currentNode.left) {
            currentNode.left = newNode;
            return this;
          }

          currentNode = currentNode.left;
        }

        if (value >= currentNode.value) {
          // Right
          if (!currentNode.right) {
            currentNode.right = newNode;
            return this;
          }

          currentNode = currentNode.right;
        }
      }
    }
  }

  lookup(value) {
    if (!this.root) return false;
    let currentNode = this.root;

    while (currentNode) {
      if (value < currentNode.value) {
        currentNode = currentNode.left;
      } else if (value > currentNode.value) {
        currentNode = currentNode.right;
      } else if (currentNode.value === value) {
        return currentNode;
      }
    }

    return false;
  }

  remove(value) {
    this.#deleteNode(this.root, value);
  }

  bfs() {
    let currentNode = this.root;
    const result = [];
    const queue = [];
    queue.push(currentNode);

    while (queue.length > 0) {
      currentNode = queue.shift();
      result.push(currentNode.value);

      if (currentNode.left) {
        queue.push(currentNode.left);
      }

      if (currentNode.right) {
        queue.push(currentNode.right);
      }
    }

    return result;
  }

  #findMin(node) {
    let currentNode = node;
    while (currentNode.left) currentNode = currentNode.left;
    return currentNode;
  }

  #deleteNode(node, value) {
    if (node === null) return node;

    if (value < node.value) {
      node.left = this.#deleteNode(node.left, value);
    } else if (value > node.value) {
      node.right = this.#deleteNode(node.right, value);
    } else {
      if (node.left === null) return node.right;
      if (node.right === null) return node.left;

      const min = this.#findMin(node.right);
      node.value = min.value;
      node.right = this.#deleteNode(node.right, min.value);
    }

    return node;
  }
}

const tree = new BreadthFirstSearch();
tree.insert(9);
tree.insert(4);
tree.insert(6);
tree.insert(20);
tree.insert(170);
tree.insert(15);
tree.insert(1);
console.log(tree.lookup(170));
console.log(JSON.stringify(traverse(tree.root)));
console.log(tree.bfs());

function traverse(node) {
  const tree = { value: node.value };
  tree.left = node.left === null ? null : traverse(node.left);
  tree.right = node.right === null ? null : traverse(node.right);
  return tree;
}
