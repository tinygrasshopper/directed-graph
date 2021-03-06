require 'spec_helper'

describe DirectedGraph::Edge do
  context "creation" do
    subject { DirectedGraph::Edge.new :A, :B}
    its(:from) {should == :A}
    its(:to) {should == :B}
  end

  context "equality" do
    subject { DirectedGraph::Edge.new :A, :B}
    it { should == DirectedGraph::Edge.new(:A, :B)}
    it { should_not == DirectedGraph::Edge.new(:B, :A)}
    it { should_not == DirectedGraph::Edge.new(:C, :D)}
  end


  describe '#from?' do
    subject { DirectedGraph::Edge.new :A, :B}
    it { should be_from :A}
    it { should_not be_from :B}
  end

  describe '#to?' do
    subject { DirectedGraph::Edge.new :A, :B}
    it { should be_to :B}
    it { should_not be_to :A}
  end
end
