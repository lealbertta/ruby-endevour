puts "Welcome to Guess That Number!"
print "Before we get started, what's your name? "
input = gets.chomp
puts "Hello there #{input}!"


target = rand(100+1)
num_guesses = 0
max_guesses = 10
did_guess_number = false
