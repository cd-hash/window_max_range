require_relative 'my_stack.rb'

class StackQueue
    def initialize
        @enqueue = Stack.new
        @dequeue = Stack.new
        @active_stack = @enqueue
    end

    def empty?
        return @active_stack.empty?
    end

    def size
        return @active_stack.size
    end

    def enqueue(element)
        @active_stack = @enqueue
        if @dequeue.empty?
            return @enqueue.push(element)
        else
            until @dequeue.empty?
                @enqueue.push(@dequeue.pop)
            end
            return @enqueue.push(element)
        end
    end

    def dequeue
        @active_stack = @dequeue
        if @dequeue.empty?
            until @enqueue.empty?
                @dequeue.push(@enqueue.pop)
            end
            return @dequeue.pop
        else
            return @dequeue.pop
        end
        
    end
end