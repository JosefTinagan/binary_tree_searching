module BinaryTree
	class Node
		attr_accessor :data, :parent, :left_child, :right_child
		def initialize(data=nil,parent=nil,left_child = nil,right_child = nil)
			@data = data
			@parent = parent
			@left_child = left_child
			@right_child = right_child
		end
	end
end