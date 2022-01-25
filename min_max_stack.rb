require_relative 'my_stack.rb'

class MinMaxStack < Stack
    def initialize
        super
    end

    def peek
        @store.last[:value]
    end

    def max
        @store.last[:max]
    end

    def min
        @store.last[:min]
    end

    def set_max(element)
        empty? ? element : [element, max].max
    end

    def set_min(element)
        empty? ? element : [element, min].min
    end

    def push(element)
        @store << {value: element, max: set_max(element), min: set_min(element)}
    end
end