module DirectedGraph
  class Graph
    attr_reader :vertices, :edges
    alias :nodes :vertices
    alias :points :vertices
    alias :arcs :edges
    alias :lines :edges


    def initialize
      @vertices = []
      @edges = []
    end

    def empty?
      vertices.empty?
    end  

    def edge(relation)
      [relation[:to]].flatten.each do |to|
        add(relation[:from], to)
      end
    end

    def cyclic?
      false
    end

    private
    def add(from, to)
      vertex(from)
      vertex(to)
      @edges << Edge.new(from, to)
    end

    def vertex(vertex)
      @vertices << vertex unless @vertices.include? vertex
    end
  end
end
