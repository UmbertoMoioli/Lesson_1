#**Sudo Code**
#*Creare array di 52 carte [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 ]*
#*Due carte per il giocatore, due per il banco*
#*Quindi il giocatore può decidere se "Hit" o "Stay"*
#*Il banco continua fnché non arriva almeno a 17*
#*Asso può valere 1 o 11*
#*Il primo che raggiunge 21 vince. Chi lo supera perde*

require "pry"

Mazzo = ["1", "1", "1", "1", "2", "2", "2", "2", "3", "3", "3", "3", "4", "4", "4", "4", "5", "5", "5", "5", "6", "6", "6", "6", "7", "7", "7", "7", "8", "8", "8", "8", "9", "9", "9", "9", "10", "10", "10", "10", "10", "10", "10", "10", "10", "10", "10", "10", "10", "10", "10", "10" ]

#Adding hand values and calculate the total
def sum_deck(to_sum)
  sum = 0
  to_sum.each { |a| sum+=a.to_i }

#Aces loop here

    if sum == 21
      puts "Vittoria!"
    elsif sum > 21
      puts "Sconfitta!"
      exit  
    end
  return sum
end

#Let player decide if pick a new card
def new_card_player(to_sum)
  puts "Do you want a new card? (y/n)"
  answer = gets.chomp.downcase
  if answer != "y" && answer != "n"
    puts "Do you want a new card? (y/n)"
    answer = gets.chomp.downcase
  elsif answer == "y"
    to_sum << Mazzo.delete_at(rand(Mazzo.length))
    puts "Your hand is #{to_sum}:"
  elsif answer == "n"
    puts "Ok, you stop!"

    if sum_deck(Player_1) > sum_deck(Computer_1)
      puts "Player won"
      exit
    else
      puts "Computer won"
      exit
    end
  end

end

#Computer pick new card logic
def new_card_computer(to_sum)
  sum = 0
  to_sum.each { |a| sum+=a.to_i }

  if sum >= 17
    puts "Computer stops here"
  else
    to_sum << Mazzo.delete_at(rand(Mazzo.length))
    puts "Computer hand is #{to_sum}"
  end

end



#Create Player and Computer hands
Player_1 = []
Computer_1 = []

#Pick fist two cards for Player and Computer
Player_1 << Mazzo.delete_at(rand(Mazzo.length))
Player_1 << Mazzo.delete_at(rand(Mazzo.length))

Computer_1 << Mazzo.delete_at(rand(Mazzo.length))
Computer_1 << Mazzo.delete_at(rand(Mazzo.length))

#Show first hands of Player and Computer and theis sums
puts "Player picks#{Player_1}"

puts "Computer picks#{Computer_1}"

puts "Player has #{sum_deck(Player_1)}" 

puts "Computer has #{sum_deck(Computer_1)}" 

while sum_deck(Computer_1) < 17 do
  #Player's game
  sum_deck(Player_1)
  new_card_player(Player_1)
  puts "Player has #{sum_deck(Player_1)}" 
 

  #Computer's game
  new_card_computer(Computer_1)
  puts "Computer has " 
  puts "Computer has #{sum_deck(Computer_1)}" 
end

loop do
  #Player's game
  sum_deck(Player_1)
  new_card_player(Player_1)
  puts "Player has " 
end
