puts "\f Hello there! Welcome to the magical world of...magic!"
print "Choose a number from 1 to 9: "
number = gets.chomp.to_i
print "Hmmmm.... tell me, have you had your birthday this year? y or n."
birthday = gets.chomp

number = ((number * 2) + 5) * 50
if birthday == "y"
    number = number + 1767
else
    number = number + 1766
end

puts "\nI have used my magic to generate this number \n\n*** \n#{number}\n*** \n\n"
puts "So to find out the initial number you guessed and your age we need to subtract 
\nyour year of birth from the magical number.
\nPlease enter your Year of Birth. #{number} - "
y_o_b = gets.chomp.to_i
answer = number - y_o_b
puts "The answer is #{answer}"
puts "The first digit is the number you guessed and the second two digits are your age!"
