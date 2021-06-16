puts "Let's have fun with some numbers!"
print "Give me a number! "
inputA = gets.to_f
print "Give me one more! "
inputB = gets.to_f
print "One more, I promise! "
inputC = gets.to_f
print "Before we start, I need your name. "
name = gets.chomp
firstOperation = inputC + inputA
puts "We added your first and third number: #{firstOperation}"
puts "We divided that number by the second number: #{firstOperation / inputB}"
puts "Did you know your name backgrounds is #{name.downcase.reverse}"