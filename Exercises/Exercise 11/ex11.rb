# Outputs out some text
print "What's your favourite colour? "
# Takes input from user and stores it in variable 'colour'
colour = gets.chomp

print "Do you have a favourite animal? "
animal = gets.chomp

print "What is your favourite beverage? "
beverage = gets.chomp

# Outputs some text with variable values using string interpolation
puts "\nSo your favourite colour is #{colour}. You love #{animal}s and you love drinking #{beverage}. That is fantastic!"
