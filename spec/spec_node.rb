require 'spec_helper'

module BinaryTree
	describe Node do
		context "#initialize" do
			it "initializes the node class with nils" do
				n = Node.new
				expect(n.data).to eq nil
			end

			it "returns correct data" do
				n = Node.new("blue")
				expect(n.data).to eq "blue"
			end
		end
	end
end