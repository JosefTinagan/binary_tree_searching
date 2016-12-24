require 'spec_helper'

module BinaryTree
	context "#build_tree(arr)" do
		it "test" do
			t = Tree.new
			t.build_tree(["a","b","c"])
		end
	end 

	context "#breadth_search(data)" do
		it "returns correct node" do
			t = Tree.new
			a = [5,2,3,4,1,6,7,8,9,10]
			t.build_tree(a)
			expect(t.breadth_search(10).data).to eq 10
		end
	end

	context "#depth_search(search_data)" do
		it "returns correct node" do
			t = Tree.new
			a = [5,2,3,4,1,6,7,8,9,10]
			t.build_tree(a)
			expect(t.depth_search(9).data).to eq 9
		end
	end

	context "#dfs_rec(data,current_node)" do
		it "returns correct node" do
			t = Tree.new
			a = [5,2,3,4,1,6,7,8,9,10]
			t.build_tree(a)
			expect(t.dfs_rec(5).data).to eq 5
		end

		it "returns correct node #2" do
			t= Tree.new
			a = [5,2,3,4,1,6,7,8,9,10]
			t.build_tree(a)
			expect(t.dfs_rec(4).data).to eq 4
		end
	end
end