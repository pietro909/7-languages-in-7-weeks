def open_file
    f = File.open("file.txt")
    f.map {|row| puts row}
end

def open_file_with_block
    File.open("file.txt", "r") { |file| file.map {|row| puts "#{row}" } }
end

puts "open file:"
open_file

puts "open file with block:"
open_file_with_block
