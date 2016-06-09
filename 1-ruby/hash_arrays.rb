def array_to_hash(array)
    hash = Hash.new()
    array.each_with_index.map { |value, index| hash[index.to_s] = value }
    hash
end

puts "translate array to hash:"
arr = [ 1, "two", [ "three" ] ]
puts arr
puts array_to_hash(arr)
