# Get My Number Game # Written by: you!
puts "Welcome to 'Get My Number!'"
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"
# Сохранение случайного числа.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1
