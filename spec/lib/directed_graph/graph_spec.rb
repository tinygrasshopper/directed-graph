require 'spec_helper'

describe DirectedGraph::Graph do
  context "creation" do
    it { should be_empty }
    its(:vertices) { should be_empty }
    its(:edges) { should be_empty }
  end
end
