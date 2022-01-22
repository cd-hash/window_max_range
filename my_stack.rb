class Stack
    def initialize
        @store = []
    end

    def peek
        @store.last
    end

    def size
        @store.length
    end

    def empty?
        @store.empty?
    end

    def push(element)
        @store << element
    end

    def pop
        @store.pop
    end
end