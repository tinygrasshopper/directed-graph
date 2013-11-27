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
    before(:each) { subject.edge from: :A, to: :B }
    it { should_not be_empty }

    its(:vertices) { should == [:A, :B]}
    its(:edges) { should == [DirectedGraph::Edge.new(:A, :B)]}
  end
end
