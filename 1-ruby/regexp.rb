filename = ARGV[0]
word = ARGV[1]
file = File.open(filename)
file.each_with_index.map do |row, index|
    if row.match(word).nil? == false then
        puts "#{index}: #{row}"
    end
end
