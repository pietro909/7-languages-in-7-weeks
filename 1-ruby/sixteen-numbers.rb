arr = 16.times

puts "with each"
i = 0
queue = []
arr.each do |n| 
    i += 1
    queue.push(n)
    if i == 4
        puts queue.to_s
        i = 0
        queue = []
    end
end

puts "with each_slice"
arr.each_slice(4) { |numbers| puts numbers.to_s }
