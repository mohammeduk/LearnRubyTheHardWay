print "Enter a number of your choice.. : "
number = gets.chomp.to_f

half_of_number = number / 2
puts "Half of your number is #{half_of_number}"

print "Please deposit some cash. You will receive 20% of the cash back. £"
cash = gets.chomp.to_f

puts "20% of your deposited cash (#{cash}) is £#{(cash/100) * 20}"
