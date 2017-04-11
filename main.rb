require_relative 'functions'

@current_player = 1
@player_1_lives = 3
@player_2_lives = 3

while true

  current_num = new_nums
  print "Player #{@current_player}: What is #{current_num[0]} plus #{current_num[1]}? "
  answer = gets.chomp.to_i

  if answer == current_num[0] + current_num[1]
    puts "CORRECT"
  else

    decrease_life(@current_player)
    if game_over?
      puts "NAH"
      winning_player
      puts "----- GAME OVER ------"
      puts "Good bye!"
      break
    else
      puts "NAH"
    end

  end
  print_stats
  puts "----- NEW TURN -----"
  switch_player
  next

end