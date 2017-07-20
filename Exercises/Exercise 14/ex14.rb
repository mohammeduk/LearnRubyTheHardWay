street_name, martial_status = ARGV.first
prompt = ":"


puts "Greetings #{street_name}"
puts "I'm the street police and need some answers!"
puts "What part of this world you from mate?"
puts prompt
lives = $stdin.gets.chomp

puts "What's your favourite tech topic?", prompt
tech_topic = $stdin.gets.chomp

puts """
  So...your street name is #{street_name}. Ok then...
  You're interested in #{tech_topic}. Cool 🤖.
  You're #{martial_status}.
  And you live in the #{lives} area. Thats great. Thats brilliant, thanks.

"""
