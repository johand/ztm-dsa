class Graph {
  constructor() {
    this.numberOfNodes = 0;
    this.adjancentList = {};
  }

  addVertex(node) {
    this.adjancentList[node] = [];
    this.numberOfNodes++;
  }

  addEdge(node1, node2) {
    // undirected graph
    this.adjancentList[node1].push(node2);
    this.adjancentList[node2].push(node1);
  }

  showConnections() {
    const allNodes = Object.keys(this.adjancentList);

    for (let node of allNodes) {
      let nodeConnections = this.adjancentList[node];
      let connections = '';
      let vertex;

      for (vertex of nodeConnections) {
        connections += vertex + ' ';
      }

      console.log(node + ' --> ' + connections);
    }
  }
}

const graph = new Graph();
graph.addVertex('0');
graph.addVertex('1');
graph.addVertex('2');
graph.addVertex('3');
graph.addVertex('4');
graph.addVertex('5');
graph.addVertex('6');
graph.addEdge('3', '1');
graph.addEdge('3', '4');
graph.addEdge('4', '2');
graph.addEdge('4', '5');
graph.addEdge('1', '2');
graph.addEdge('1', '0');
graph.addEdge('0', '2');
graph.addEdge('6', '5');
graph.showConnections();
