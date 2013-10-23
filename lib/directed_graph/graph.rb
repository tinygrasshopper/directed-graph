module DirectedGraph
  class Graph
    attr_reader :vertices, :edges

    def initialize
      @vertices = []
      @edges = []
    end

    def empty?
      vertices.empty?
    end  
  end
end
