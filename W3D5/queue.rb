class Queue
    def initialize(val = nil)
        @head = nil
        @tail = nil 

        if val 
            @head = Node.new(val)
            @head.tail = nil 
            @tail = @head 
        end
    end

    def enqueue(el)
        n = Node.new(el)
        n.head = @tail if @tail 

        if @head == nil
            @head = n 
            @tail = n 
        else 
            @tail.tail = n 
            @tail = n 
        end
    end

    def dequeue 
        return nil if @head == nil 
        n = @head.val
        @tail = @head.tail if @tail == @head 
        @head = @head.tail 
        n
    end

    def peek 
        @head.val 
    end 

    def inspect 
        res = [] 
        tmp = @head

        until tmp == nil 
            res << tmp.val 
            tmp = tmp.tail 
        end 
        res
    end 
end

class Node 
    attr_accessor :head, :val, :tail 
    def initialize(val)
        @val = val 
        @head = nil 
        @tail = nil 
    end

    def inspect 
        @val 
    end
end

# q = Queue.new
# p q 
# q.enqueue(1)
# q.enqueue(2)
# q.enqueue(3)
# p q 
# print "Peek #{q.peek}\n"
# p q 
# p q.dequeue
# p q 
