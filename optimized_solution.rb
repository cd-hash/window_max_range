require_relative 'min_max_stack_queue.rb'

def max_windowed_range(array, window_size)
    max_range = nil
    queue = MinMaxStackQueue.new
    array.each do |ele|
        queue.enqueue(ele)
        queue.dequeue if queue.size > window_size
        max_range = (queue.max - queue.min) if max_range == nil || (max_range < queue.max - queue.min)
    end
    return max_range
end

puts "Max Windowed Range Tests"
p max_windowed_range([1, 0, 2, 5, 4, 8], 2) == 4
p max_windowed_range([1, 0, 2, 5, 4, 8], 3) == 5
p max_windowed_range([1, 0, 2, 5, 4, 8], 4) == 6
p max_windowed_range([1, 3, 2, 5, 4, 8], 5) == 6