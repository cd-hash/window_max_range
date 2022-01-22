class Queue
    def initialize
        @store = []
    end

    def peek
        return @store.first
    end

    def size
        return @store.length
    end

    def empty?
        return @store.empty?
    end

    def enqueue(element)
        @store << element
    end

    def dequeue
        @store.shift
    end
end