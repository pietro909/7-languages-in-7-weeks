class Tree
    attr_accessor :children, :node_name

    def initialize(name, children=[])
        @children = children
        @node_name = name
    end

    def visit_all(&block)
        visit &block
        children.each { |child| child.visit_all &block }
    end

    def visit(&block)
        block.call self
    end

end
