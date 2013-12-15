require 'spec_helper'

describe DirectedGraph::Vertex do
  let(:graph) { DirectedGraph::Graph.new }
  let(:payload) { :A }

  subject { described_class.new graph, payload }

  describe 'equality' do
    it {should == described_class.new(graph, payload)}
    it {should_not == described_class.new(DirectedGraph::Graph.new, payload)}
    it {should_not == described_class.new(graph, :other_payload)}
    it {should_not be_nil }
    it {should_not == "" }
  end

  describe 'edges' do
    before { 
      graph.edge(from: :A, to: :B)
      graph.edge(from: :C, to: :A)
    }

    its(:outgoing_edges) { should == [DirectedGraph::Edge.new(:A, :B)] }
    its(:incomming_edges) { should == [DirectedGraph::Edge.new(:C, :A)] }
  end

  describe 'neighbours' do
    before { 
      graph.edge(from: :A, to: :B)
      graph.edge(from: :A, to: :D)
      graph.edge(from: :C, to: :A)
    }

    its(:neighbours) {should =~ [graph.vertex(:B), graph.vertex(:D)]}
  end
end
