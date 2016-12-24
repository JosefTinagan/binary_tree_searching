module BinaryTree
	class Tree
		attr_accessor :tree_ref
		def initialize
			@tree_ref = nil
		end

		def build_tree(array)
			array.each do |x|
				insert(x)
			end
		end

		def insert(data)
			if tree_ref == nil
				@tree_ref = Node.new(data)
			else
				tmp = tree_ref
				found_place = false
				while !found_place
					if data <= tmp.data
						if tmp.left_child == nil
							tmp.left_child = Node.new(data)
							tmp.left_child.parent = tmp
							found_place = true
							break
						else
							tmp = tmp.left_child
						end
					else
						#data >= tmp.data
						if tmp.right_child == nil
							tmp.right_child = Node.new(data)
							tmp.right_child.parent = tmp
							found_place = true
							break
						else
							tmp = tmp.right_child
						end

					end
				end
			end
		end

		def breadth_search(data)
			return nil if tree_ref == nil
			array_queue = []
			tmp = tree_ref
			array_queue.push(tmp)

			while !array_queue.empty?
				puts
				puts array_queue.last.data
				return array_queue.last if array_queue.last.data == data
				array_queue.unshift(array_queue.last.left_child) if array_queue.last.left_child != nil
				array_queue.unshift(array_queue.last.right_child) if array_queue.last.right_child != nil
				array_queue.pop
			end
			return "Not Found"
		end

		def depth_search(search_data)
			stack = [tree_ref]
			visited = [tree_ref]

			while !stack.empty?
				current = stack.last

				puts current.data
				left,right = current.left_child, current.right_child

				if current.data == search_data
					return current
				elsif !left.nil? && !visited.include?(left)
					if left.data == search_data
						return left
					else
						stack << left
						visited << left
					end
				elsif !right.nil? && !visited.include?(right)
					if right.data == search_data
						return right
					else
						stack << right
						visited << right
					end
				else
					stack.pop
				end
			end
		end

		def dfs_rec(data,current_node=tree_ref)
			return if current_node == nil
			puts current_node.data
			return current_node if current_node.data == data
			a = dfs_rec(data,current_node.left_child)
			b = dfs_rec(data,current_node.right_child)
			a || b
		end

	end
end