puts """
Welcome to the awesome game of Rock Paper Scissors!!
You will be playing against Hal - the computer!

˚˚˚˚ ROCK PAPER SCISSORS - GAME RULES ˚˚˚˚

1 -> Rock
2 -> Paper
3 -> Scissors

Lets gets started! Best out of 3!
"""

@rock = "Rock"
@paper = "Paper"
@scissors = "Scissors"
@hand_array = ["Rock", "Paper", "Scissors"]
@user_points = 0
@computer_points = 0
@round = 0

def score
  puts """

   •••••••••••••••••••••••••••••••••
   ………………………………………………………………………………………
         ««««   SCORE   »»»»
         YOU      |     HAL
          #{@user_points}              #{@computer_points}
   ………………………………………………………………………………………
   •••••••••••••••••••••••••••••••••
  """
end

def play
  if @user_points == 3
    puts "You Won!"
    score
    abort
  elsif @computer_points == 3
    puts "You Lost!\n"
    score
    abort
  end

  @round = @round + 1
  score

 loop do
   puts """
               …………………
               ROUND #{@round}
               …………………
   """
   print "Rock, Paper or Scissors? : "
   choice = $stdin.gets.chomp
    case choice
    when "1"
      puts "\nYou chose #{@rock}"
      @user_play = "#{@rock}"
      @computer_play = @hand_array.sample
      puts "The computer chose #{@computer_play}"
      game(@rock)
      # return @rock
      break
    when "2"
      puts "\nYou chose #{@paper}"
      @user_play = "#{@paper}"
      @computer_play = @hand_array.sample
      puts "The computer chose #{@computer_play}"
      game(@paper)
      # return @paper
      break
    when "3"
      puts "\nYou chose #{@scissors}"
      @user_play = "#{@scissors}"
      @computer_play = @hand_array.sample
      puts "The computer chose #{@computer_play}"
      game(@scissors)
      # return @scissors
      break
    else
      puts "Invalid choice"
    end
  end
end


def game user_input

  if @user_points == 3
    puts "YOU WON!\n"
    score
    abort
  elsif @computer_points == 3
    puts "YOU LOST!\n"
    score
    abort
  end

  loop do
      if ((@user_play == "Rock" && @computer_play == "Rock") || (@user_play == "Paper" && @computer_play == "Paper") || (@user_play == "Scissors" && @computer_play == "Scissors"))
        puts "DRAW! You both picked the same hand. Play again!"
        play
      elsif (@user_play == "Rock" && @computer_play == "Paper")
        # puts "Hal got you with Paper!"
        puts "Darn. Hal got you.!"
        @computer_points = @computer_points + 1
        # puts "SCORE -> You: #{@user_points} Vs Hal: #{@computer_points}"
        play
      elsif (@user_play == "Rock" && @computer_play == "Scissors")
        # puts "You got Hal! Hal had Scissors"
        puts "You won this round. WooHoo.!"
        @user_points = @user_points + 1
        # puts "SCORE -> You: #{@user_points} Vs Hal: #{@computer_points}"
        play
      elsif (@user_play == "Paper" && @computer_play == "Scissors")
        # puts "Hal got you with Scissors!"
        puts "Hal strikes again!"
        @computer_points = @computer_points + 1
        # puts "SCORE -> You: #{@user_points} Vs Hal: #{@computer_points}"
        play
      elsif (@user_play == "Paper" && @computer_play == "Rock")
        # puts "You got Hal! Hal had Rock"
        puts "Nice going!"
        @user_points = @user_points + 1
        # puts "SCORE -> You: #{@user_points} Vs Hal: #{@computer_points}"
        play
      elsif (@user_play == "Scissors" && @computer_play == "Paper")
        # puts "You got Hal! Hal had Paper"
        puts "Get a load of this guy - quick hands buddy!"
        @user_points = @user_points + 1
        # puts "SCORE -> You: #{@user_points} Vs Hal: #{@computer_points}"
        play
      elsif (@user_play == "Scissors" && @computer_play == "Rock")
        # puts "Hal got you with Rock!"
        puts "Oops. Too slow bud!"
        @computer_points = @computer_points + 1
        # puts "SCORE -> You: #{@user_points} Vs Hal: #{@computer_points}"
        play
      end
    end
end

play
