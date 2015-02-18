loop do
  puts "Do you want to play? [chose 'No' to stop, everything else will run the program]"
  answer = gets.chomp

  break if answer == "No"

  puts "Chose Rock (R), Paper (P) or Scissor (S)"
  ans = gets.chomp
  arr = ["R", "P", "S"]
  cpu = arr[rand(arr.length)]
  puts "Computer choose #{cpu}"



  if ans == "R" && cpu == "R"
    puts "Both Rock... It's a tie!"
  elsif ans == "R" && cpu == "P"
    puts "You picked Rock and computer picked Scissor... CPU win!"
  elsif ans == "R" && cpu == "P"
    puts "You picked Rock and computer picked Paper... You win!"
  elsif  ans == "P" && cpu == "P"
    puts "Both Paper... It's a tie!"
  elsif ans == "P" && cpu == "R"
    puts "You picked Paper and computer picked Rock... You win!"
  elsif ans == "P" && cpu == "S"
    puts "You picked Rock and computer picked Scissor... CPU win!"
  elsif ans == "S" && cpu == "S"
    puts "Both Scissor... It's a tie!"
  elsif ans == "S" && cpu == "R"
    puts "You picked Scissor and computer picked Rock... CPU win!"
  elsif ans == "S" && cpu == "P"
    puts "You picked Scissor and computer picked Paper... You win!"
  end
end
      
      
      
    

      
      
      
      

