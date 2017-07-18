cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} to carpool today."
puts "We have #{passengers} to carpool today"
puts "We need to put about #{average_passengers_per_car} in each car."


=begin
Answer to question about carpool_capacity error.

The local variable does not exist. This could be due to a type or simple because
the variable was not created.
=end
