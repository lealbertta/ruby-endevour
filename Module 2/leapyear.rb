input = ''

begin
    print "Enter a year: "
    input = Integer(gets.chomp)
    raise ArgumentError, 'Incorrect input' unless input > 0
    if input % 400 == 0
        puts input.to_s + ' is leap year'
    elsif input % 4==0 && input % 100 != 0 
       puts input.to_s + ' is leap year'
    else puts input.to_s + ' is not leap year'
    end
rescue ArgumentError
    puts "#{input} is not a valid year"
    retry
end