class Tree
	attr_accessor :children, :node_name

	def initialize(items)

    if items.class == Array
      @node_name = items[0]
      @children = items[1]
    else
      @node_name = items.keys.first
      @children = items.values.first
    end

	end

	def visit_all(&block)
		visit &block
		children.map { |c| Tree.new(c).visit_all &block }
	end

	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new( { 'grandpa' => { 'dad' => { 'child1' => {}, 'child2' => {} }, 'uncle' => { 'child3' => {}, 'child4' => {} } } } )

puts "Visiting a node"
ruby_tree.visit {|node|	puts node.node_name}
puts

puts "Visiting entire tree"
ruby_tree.visit_all {|node|	puts node.node_name}