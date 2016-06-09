puts "*** Guess the number 0.1 ***"
puts "I will generate a random number between 0 and the limit you decide: then you try to guess the result!"
puts "What's the upper bound?"
max = gets.to_i
puts "What's your guess?"
userInput = gets.to_i
myNumber = rand(max)
if userInput == myNumber
    puts "YEEEEEE!!!"
else
    puts "was #{myNumber}... you lost!"
end
