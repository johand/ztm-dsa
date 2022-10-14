class Node {
  constructor(value) {
    this.left = null;
    this.right = null;
    this.value = value;
  }
}

class DepthFirstSearch {
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

  inOrder() {
    return this.#inOrderT(this.root, []);
  }

  preOrder() {
    return this.#preOrderT(this.root, []);
  }

  postOrder() {
    return this.#postOrderT(this.root, []);
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

  #inOrderT(node, res) {
    if (node) {
      this.#inOrderT(node.left, res);
      res.push(node.value);
      this.#inOrderT(node.right, res);
    }

    return res;
  }

  #preOrderT(node, res) {
    if (node) {
      res.push(node.value);
      this.#preOrderT(node.left, res);
      this.#preOrderT(node.right, res);
    }

    return res;
  }

  #postOrderT(node, res) {
    if (node) {
      this.#postOrderT(node.left, res);
      this.#postOrderT(node.right, res);
      res.push(node.value);
    }

    return res;
  }
}

const tree = new DepthFirstSearch();
tree.insert(9);
tree.insert(4);
tree.insert(6);
tree.insert(20);
tree.insert(170);
tree.insert(15);
tree.insert(1);
console.log(tree.lookup(170));
console.log(JSON.stringify(traverse(tree.root)));
console.log(tree.inOrder());
console.log(tree.preOrder());
console.log(tree.postOrder());

function traverse(node) {
  const tree = { value: node.value };
  tree.left = node.left === null ? null : traverse(node.left);
  tree.right = node.right === null ? null : traverse(node.right);
  return tree;
}
