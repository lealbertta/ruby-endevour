toGuess = Array.new

until toGuess.size == 4
    toGuess.push(rand(6) + 1)
end

gotEm = false
count = 0

until gotEm 
    target = toGuess.clone
    tokenizedInput = Array.new

    begin
        print "Enter a number: "
        input = Integer(gets.chomp)
        tokenizedInput = input.to_s.split ''
        raise ArgumentError, 'Incorrect input' unless tokenizedInput.size == 4 && input > 0
    rescue ArgumentError
        retry
    end

    guessResult = Array.new

    guessedIndex = Array.new

    for i in 0..3
        if target[i] == Integer(tokenizedInput[i])
            guessResult.push "X"
            guessedIndex.push i
        end
    end

    gotEm = guessResult.size == 4

    for index in guessedIndex.sort.reverse
        target.delete_at index
        tokenizedInput.delete_at index
    end

    for i in 0..(target.size - 1)
        if target.include? Integer(tokenizedInput[i])
            target.delete_at i
            guessResult.push "x"
        end
    end
    count += 1
    puts guessResult.join ''
end

puts "Nice! Took #{count} guesses"