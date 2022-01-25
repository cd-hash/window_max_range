require_relative 'min_max_stack.rb'

class MinMaxStackQueue
    def initialize
        @enqueue_stack = MinMaxStack.new
        @dequeue_stack = MinMaxStack.new
    end

    def size
        @enqueue_stack.size
    end

    def enqueue(element)
        @enqueue_stack.push(element)
    end

    def dequeue
        until @enqueue_stack.empty?
            @dequeue_stack.push(@enqueue_stack.pop[:value])
        end
        dequeued_element = @dequeue_stack.pop
        until @dequeue_stack.empty?
            @enqueue_stack.push(@dequeue_stack.pop[:value])
        end

        return dequeued_element
    end

    def max
        @enqueue_stack.max
    end

    def min
        @enqueue_stack.min
    end
end