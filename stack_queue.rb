require_relative 'my_stack.rb'

class StackQueue
    def initialize
        @enqueue = Stack.new
        @dequeue = Stack.new
    end

    def empty?
        return @enqueue.empty? && @dequeue.empty?
    end

    def size
        return @enqueue.size + @dequeue.size
    end

    def enqueue(element)
        @enqueue.push(element)
    end

    def dequeue
        if @dequeue.empty?
            until @enqueue.empty?
                @dequeue.push(@enqueue.pop)
            end
        end
        return @dequeue.pop
    end
end