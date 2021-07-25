require 'set'
class GraphNode
    attr_accessor :val, :neighbors 

    def initialize(val)
        @val = val 
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        q = [starting_node]
        set = Set.new 

        until q.empty?
            curr_node = q.pop
            next if set.include?(curr_node)
            return curr_node if curr_node.val == target_value
            set.add(curr_node)

            curr_node.neighbors.each { |node| q.unshift(node)}
        end
        nil
    end

    def inspect 
        @val 
    end 
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p a.bfs(a, "b")
p a.bfs(a, 'f')
p a.bfs(f, 'd')