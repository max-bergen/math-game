def new_nums
  num_1 = Random.rand(1..10)
  num_2 = Random.rand(1..10)
  [num_1, num_2]
end

def decrease_life(current_player)
  current_player == 1 ? @player_1_lives -= 1 : @player_2_lives -= 1
end

def switch_player
  @current_player == 1 ? @current_player = 2 : @current_player = 1
end

def game_over?
  (@player_1_lives == 0) || (@player_2_lives == 0) ? true : false
end

def winning_player
  if (@player_1_lives == 0)
    puts "Player 2 wins with a score of #{@player_2_lives}/3"
  end
  if (@player_2_lives == 0)
    puts "Player 1 wins with a score of #{@player_1_lives}/3"
  end
end

def print_stats
  puts "P1: #{@player_1_lives}/3 vs P2: #{@player_2_lives}/3"
end