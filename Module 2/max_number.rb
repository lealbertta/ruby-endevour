inputs = Array.new

begin
    print "Enter a number: "
    input = Integer(gets.chomp)
    inputs.push(input)
rescue ArgumentError
    retry
end

until inputs.length == 2 
    begin
        print "Enter another number: "
        input = Integer(gets.chomp)
        inputs.push(input)
    rescue ArgumentError
        retry
    end
end


puts "Max: #{inputs.max}"