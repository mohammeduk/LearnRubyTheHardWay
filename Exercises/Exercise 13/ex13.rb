sandwich, crisp, drink = ARGV

puts "#{sandwich.capitalize} sounds tasty!"
puts "#{crisp.capitalize} sounds delicious!"
puts "#{drink.capitalize} sounds refreshing!"

puts "*** What else is in your packed lunch today? ***"
extra_lunch = $stdin.gets.chomp

puts "Wow. #{extra_lunch.capitalize}, #{sandwich.capitalize}, #{drink.capitalize} & #{crisp.capitalize} sounds like an awesome packed lunch!"
