CHOICES = {"p" => "Paper", "r" => "Rock", "s" => "Scissor"}

puts "Welcome to Rock, Paper, Scissor"

def display_winning_message(winning_choice)
  case winning_choice
  when "p"
    puts "Paper wraps Rock"
  when "r"
    puts "Rock smashes Scissor"
  when "s"
    puts "Scissor cuts Paper"
  end
end

loop do
  begin
    puts "Pick p, r or s"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  computer_choice = CHOICES.keys.sample.to_i

  if player_choice == computer_choice 
    puts "It's a tie"
  elsif (player_choice == "p" && computer_choice == "r") || (player_choice == "r" && computer_choice == "s") || (player_choice == "s" && computer_choice == "p")
    display_winning_message(player_choice)
    puts "You won"
  else
    display_winning_message(computer_choice)
    puts "Computer Won"
  end

  puts "Play again? (y/n)"
  break if gets.chomp.downcase != "y"

end