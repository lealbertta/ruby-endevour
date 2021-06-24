begin
    print "Enter a number: "
    input = Integer(gets.chomp)
    splitInput = input.to_s.split('')
    if input < 0
        puts "#{splitInput.sort.join('')}"
    else puts splitInput.sort.reverse.join('')
    end
rescue ArgumentError
    retry
end