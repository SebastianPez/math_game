require './player.rb'
require './question.rb'
require './turn.rb'


def start_game player1, player2

  current_player = player1

  question = Question.new()
  turn = Turn.new(current_player, question.answer)
  puts "#{current_player.name} what is #{question.question}?"

  print "Your answer here > "
  player_answer = $stdin.gets.chomp.to_i


  if turn.player_attempt(player_answer)
    puts "You got it right!"
    next_turn(player1, player2, current_player)
  else 
    puts "Wrong :("
    current_player.lose_life
    next_turn(player1, player2, current_player)
  end
  exit  
end

def next_turn player1, player2, current_player
  if current_player == player1
    current_player = player2
  elsif current_player == player2
    current_player = player1
  end

  if player1.lives <= 0 || player2.lives <= 0
    if player1.lives > 0 && player2.lives <= 0
      winner = player1
    elsif player2.lives > 0 && player1.lives <= 0
      winner = player2
    end
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "--------- GAME OVER ---------"
    puts "Good bye!"
    abort
  else
    puts "Current lives: #{player1.name} = #{player1.lives}/3 | #{player2.name} = #{player2.lives}/3"
    puts "--------- NEW TURN ---------"
    
    new_question = Question.new()
    new_turn = Turn.new(current_player, new_question.answer)
    puts "#{current_player.name} what is #{new_question.question}?"

    print "Your answer here > "
    player_answer = $stdin.gets.chomp.to_i

    if new_turn.player_attempt(player_answer)
      puts "You got it right!"
      next_turn(player1, player2, current_player)
    else 
      puts "Wrong :("
      current_player.lose_life
      next_turn(player1, player2, current_player)
    end
  end
end


puts "Welcome to the Math Game."
puts "Two players will take turns solving math equations."
puts "You each have 3 lives."
puts "When you answer correctly, you lose no lives and it becomes the other player's turn."
puts "When you answer incorrectly, you lose one life and it becomes the other player's turn."
puts "Enter your username."

print "> "
username1 = $stdin.gets.chomp
player1 = Player.new(username1, 3)

puts "Enter second player's username."

print "> "
username2 = $stdin.gets.chomp
player2 = Player.new(username2, 3)

start_game(player1, player2)
