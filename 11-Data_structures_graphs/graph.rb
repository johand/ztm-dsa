# frozen_string_literal: true

class Graph
  def initialize
    @number_of_nodes = 0
    @adjacent_list = {}
  end

  def add_vertex(node)
    @adjacent_list[node] = []
    @number_of_nodes += 1
  end

  def add_edge(node1, node2)
    @adjacent_list[node1] << node2
    @adjacent_list[node2] << node1
  end

  def show_connections
    all_nodes = @adjacent_list.keys

    all_nodes.each do |node|
      node_connections = @adjacent_list[node]
      connections = ''

      node_connections.each do |vertex|
        connections += vertex
      end

      puts "#{node} --> #{connections}"
    end
  end
end

graph = Graph.new
graph.add_vertex('0')
graph.add_vertex('1')
graph.add_vertex('2')
graph.add_vertex('3')
graph.add_vertex('4')
graph.add_vertex('5')
graph.add_vertex('6')
graph.add_edge('3', '1')
graph.add_edge('3', '4')
graph.add_edge('4', '2')
graph.add_edge('4', '5')
graph.add_edge('1', '2')
graph.add_edge('1', '0')
graph.add_edge('0', '2')
graph.add_edge('6', '5')
graph.show_connections
