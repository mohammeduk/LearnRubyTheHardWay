require 'pry'
# Gets inut from user before file is run.
# In this case the input should be the name of a file
filename = ARGV.first

# Makes a file object and assigns it to the txt variable
txt = open(filename)
puts "Here's your file #{filename}"
# Outputs the contents of txt
binding.pry
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read

txt.close
txt_again.close
