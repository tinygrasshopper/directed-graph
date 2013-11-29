require 'spec_helper'

describe DirectedGraph::Graph do
  context "creation" do
    it { should be_empty }
    its(:vertices) { should be_empty }
    its(:edges) { should be_empty }
  end

  context 'aliases' do
    it { should alias_from(:vertices).to(:nodes) }
    it { should alias_from(:vertices).to(:points) }
    it { should alias_from(:edges).to(:arcs) }
    it { should alias_from(:edges).to(:lines) }
  end

  context 'adding an edge' do
    before { subject.edge from: :A, to: :B }
    it { should_not be_empty }

    its(:vertices) { should == [:A, :B]}
    its(:edges) { should == [DirectedGraph::Edge.new(:A, :B)]}
  end

  context 'adding multiple edges' do
    before { 
      subject.edge from: :A, to: :B 
      subject.edge from: :A, to: :C 
    }
    it { should_not be_empty }

    its(:vertices) { should == [:A, :B, :C]}
    its(:edges) { should == [DirectedGraph::Edge.new(:A, :B), DirectedGraph::Edge.new(:A, :C)]}
  end

  context 'adding an edge to multple nodes' do
    before {subject.edge from: :A, to: [:C, :D]}

    its(:vertices) { should == [:A, :C, :D] }
    its(:edges) {should == [DirectedGraph::Edge.new(:A, :C), DirectedGraph::Edge.new(:A, :D)]}
  end

#  describe '#cyclic?' do
#    context 'a normal edge' do
#      before { subject.edge from: :A, to: :B}
#
#      it { should_not be_cyclic }
#    end
#
#    context 'one vertex with an edge to itself' do
#      before { subject.edge from: :A, to: :A }
#
#      it { should be_cyclic }
#    end
#
#    context 'vertex eventually has a edge it self' do
#      before { 
#        subject.edge from: :A, to: :B 
#        subject.edge from: :B, to: :C 
#        subject.edge from: :C, to: :A 
#      }
#
#      it { should be_cyclic }
#    end
#  end
end
