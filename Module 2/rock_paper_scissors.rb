@options = ["rock", "paper", "scissors"] 
@winMapping = {"rock"=>"scissors", "paper"=>"rock", "scissors"=>"paper"}

def calculate_result(playerOneAction, playerTwoAction)
    case
    when @winMapping[playerOneAction] == playerTwoAction
        "Player 1 wins!"
    when @winMapping[playerTwoAction] == playerOneAction
        "Player 2 wins!"
    else
        return "Tie!"
    end
end

def is_input_valid?(action)
    @options.include?(action)
end

puts "Rock Paper Scissors"
print "Player 1 - Enter your selection: "
playerOne = gets.chomp
print "Player 2 - Enter your selection: "
playerTwo = gets.chomp

if (is_input_valid?(playerOne) && is_input_valid?(playerTwo)) 
    puts calculate_result(playerOne, playerTwo)
else
    puts "No cheaters! Only Rock, Paper or Scissors are allowed."
end 
    