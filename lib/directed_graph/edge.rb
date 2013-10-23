module DirectedGraph
  class Edge
    attr_reader :from, :to
    def initialize from, to
      @from = from
      @to = to
    end

    def == other
      self.from == other.from && self.to == other.to
    end

    def eql? other
      raise :e
      self == other
    end
  end
end
