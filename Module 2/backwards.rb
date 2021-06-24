input = Array.new
begin
    print 'Input your first and last name: '
    input = gets.chomp.split(" ")
    raise ArgumentError, 'Incorrect input' unless input.length == 2
rescue ArgumentError
    retry
end

puts "Hello #{input.reverse.join(' ')}"