class Stack
    def initialize(el = nil)
        # create ivar to store stack here!
        @stack = []
        @stack << el if el 
    end

    def push(el)
        # adds an element to the stack
        @stack << el 
    end

    def pop
          # removes one element from the stack
          @stack.pop 

    end

    def peek
         # returns, but doesn't remove, the top element in the stack
         @stack.last
    end

    def inspect
        @stack
    end
end

# s = Stack.new(1)
# p s 
# s.push(2)
# s.push(3)
# p s 
# p s.peek 
# p s 
# x = s.pop 
# p s 