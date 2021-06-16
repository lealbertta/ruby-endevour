puts "Welcome to Guess That Number!"
print "Before we get started, what's your name? "
input = gets.chomp
puts "Hello there #{input}!"


target = rand(100+1)
num_guesses = 0
max_guesses = 10

did_guess_number = false
    puts "You've got #{max_guesses - num_guesses} guesses left."
    print "Make a guess: "
    guess = gets.to_i
    num_guesses += 1

    if guess < target
        puts "Oops. Your guess was LOW."
    elsif guess > target 
        puts "Oops. Your guess was HIGH."
    elsif guess == target
        puts "Good job #{input}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        did_guess_number = true
    end
