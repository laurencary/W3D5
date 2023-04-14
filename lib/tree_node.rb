class PolyTreeNode
    
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(parent)
        return nil if parent == nil 
        
        if @parent == nil
            @parent = parent
            parent.children << self
        # elsif 
        end
    end
end

        a
    b       c
d   e   f       g

a = PolyTreeNode.new("a")
b = PolyTreeNode.new("b")
c = PolyTreeNode.new("c")
d = PolyTreeNode.new("d")
e = PolyTreeNode.new("e")
f = PolyTreeNode.new("f")

b.parent = a
c.parent = a
d.parent = b 
e.parent = b 

b.parent = a