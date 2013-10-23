module DirectedGraph
  class Graph
    attr_reader :vertices, :edges
    alias :nodes :vertices
    alias :points :vertices
    alias :arcs :edges
    alias :lines :edges


    def initialize
      @vertices = Set.new
      @edges = Set.new
    end

    def empty?
      vertices.empty?
    end  

    def edge(relation)
      @vertices << relation[:from]
      @vertices << relation[:to]
      @edges << Edge.new(relation[:from], relation[:to])
    end
  end
end
