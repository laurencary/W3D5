class PolyTreeNode
    
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(parent)
        # return @parent.children.delete(self) if parent == nil 
        if parent == nil 
            
            @parent.children.delete(self)
            @parent = nil 
        
        elsif @parent == nil
            @parent = parent
            parent.children << self
        elsif @parent != nil && @parent != parent 
            @parent.children.delete(self)
            @parent = parent
            parent.children << self

        end
    end

    def add_child(child)
        
        if !self.children.include?(child)
            child.parent = self
        end
    end
    def remove_child(child)
        if @children.include?(child)
            child.parent = nil 
        else 
            raise "this child does not exist"
        end
    end

    def dfs(target)
        puts self.value
        return self if self.value == target 
        self.children.each do |child|
            found = child.dfs(target)
            return found if found
        end
        nil
    end

    def bfs(target)
        return self if self.value == target
        

    end

end

# [root]
# [child1, child2]
# [child2, grandchild1, grandchild2]
#         a
#     b       c
# d   e   f       g

# b.add_child(e)

# a = PolyTreeNode.new("a")
# b = PolyTreeNode.new("b")
# c = PolyTreeNode.new("c")
# d = PolyTreeNode.new("d")
# e = PolyTreeNode.new("e")
# f = PolyTreeNode.new("f")

# b.parent = a
# c.parent = a
# d.parent = b 
# e.parent = b 

# b.parent = a


# class Searchable
#     def dfs(tree_instance)


# end