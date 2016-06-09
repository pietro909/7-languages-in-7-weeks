# {'grandpa'=>{'dad'=>{'child1'=>{},'child2'=>{}},'uncle'=>{'child3'=>{},'child4'=>{}}}}
class Tree
    attr_accessor :children, :node_name

    def initialize(literal)
        name = literal.keys[0]
        @children = literal[name].map do |k, v|
            Tree.new({k => v}) 
        end
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

t = Tree.new({'grandpa'=>{'dad'=>{'child1'=>{},'child2'=>{}},'uncle'=>{'child3'=>{},'child4'=>{}}}})
t.visit_all { |n| puts "#{n.node_name} -> #{n.children}" }
