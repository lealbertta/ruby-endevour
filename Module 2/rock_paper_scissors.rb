@options = ["rock", "paper", "scissors"] 
@winMapping = {"rock"=>"scissors", "paper"=>"rock", "scissors"=>"paper"}
@winMessage = {"rock"=>"Rock crushes scissors", "paper"=>"Paper covers rock", "scissors"=>"Scissors cuts paper"}
@playerOneWins = 0
@playerTwoWins = 0

def calculate_result(playerOneAction, playerTwoAction)
    case
    when @winMapping[playerOneAction] == playerTwoAction
        @playerOneWins += 1
        return @winMessage[playerOneAction]
    when @winMapping[playerTwoAction] == playerOneAction
        @playerTwoWins += 1
        return @winMessage[playerTwoAction]
    else
        return "Tie!"
    end
end

def is_input_valid?(action)
    @options.include?(action)
end

def get_inputs
    print "Player 1 - Enter your selection: "
    playerOne = gets.chomp
    print "Player 2 - Enter your selection: "
    playerTwo = gets.chomp

    return playerOne, playerTwo
end

puts "Rock Paper Scissors"
until (@playerTwoWins == 2 || @playerOneWins == 2)
    playerOne, playerTwo = get_inputs
    if (is_input_valid?(playerOne) && is_input_valid?(playerTwo)) 
        puts calculate_result(playerOne, playerTwo)
    else
        puts "No cheaters! Only Rock, Paper or Scissors are allowed."
    end 
end

puts "Player #{@playerOneWins == 2 ? 1 : 2} wins!"