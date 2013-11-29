module DirectedGraph
  class Vertex
    attr_reader :graph, :payload
    def initialize(graph, payload)
      @graph = graph
      @payload = payload
    end

    def outgoing_edges
      graph.edges.select {|e| e.from? payload }
    end

    def == other
      other.instance_of?(self.class) &&
        self.graph == other.graph &&
        self.payload == other.payload
    end
  end
end
