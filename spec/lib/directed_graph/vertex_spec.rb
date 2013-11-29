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

  describe 'outgoing edges' do
    before { graph.edge(from: :A, to: :B)}

    its(:outgoing_edges) { should == [DirectedGraph::Edge.new(:A, :B)] }
  end
end
