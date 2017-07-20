filename = ARGV.first

puts "We are going to remove the contents of the file  #{filename}"
puts "Hit RETURN if that's cool or hit CTRL-C if that isn't cool!"

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Astalavista Baby!"
target.truncate(0)

puts "I am now going to ask you for 2 lines.."

print "Line 1: "
line1 = $stdin.gets.chomp

print "Line 2: "
line2 = $stdin.gets.chomp

puts "I am going to write these lines to the file now!"

line_combined = line1 + "\n" + line2

target.write(line1)
target.write("\n")
target.write(line2)

puts "The file has been written and it is now being closed."
target.close
