

#Calcolare il totale
def calcultate_total(card) 
# Prende qualcosa del genere [["H", "3"], ["S", "Q"], ...]
# Ci serve solo il secondo valore dell'array. Si usa .map che estra dei dati da un array e li lavora, quindi li mette in nuovo array
  arr = card.map {|e| e[1]}

  total = 0
  arr.each do |value|

    if value == "A"
      total += 11
    elsif value.to_i == 0 ##Le lettere "K", "Q", "K" to_i valgono 0
      total = total + 10
    else
      total += value.to_i
    end
  end

  #Sistema gli Assi
  #Select non restituisce un array ma passa tra i dati dell'arrey e quando soddisfa la condizione li lavora
  arr.select{|e| e == "A"}.count.times do
    if total < 21
      total -= 10
    end 
  end

  return total

end

puts "Welcome to Blackjack"

suits = ["H", "D", "S", "C"]
cards = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

#Importante per fare prodotto di due carte
deck = suits.product(cards)
#Mescola mazzo
deck.shuffle!

#Dare le carte
mycards = []
dealercards = []

#Metto nelle mani dei giocatori l'ultimo elemento del mazzo con pop, e lo tolgo
mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

dealertotal = calcultate_total(dealercards)
mytotal = calcultate_total(mycards)
  
puts "mycards is:" + mycards.to_s
puts "dealercards is:" + dealercards.to_s

#Mostra le carte
puts "Dealer has: #{dealercards [0]} and #{dealercards[1]}, for a total of #{dealertotal}"
puts "You have: #{mycards[0]} and #{mycards[1]}, for a total of #{mytotal}"
puts ""

#Turno del giocatore

if mytotal == 21
  puts "Congratulazioni, hai vinto!"
  exit
end

while mytotal < 21
  puts "What would you like to do? 1) hit or 2) stay"
  hit_or_stay = gets.chomp

  if !["1", "2"].include?(hit_or_stay)
    puts "Error: devi scegliere uno o due"
    next #ricomincia il loop while
  end

  if hit_or_stay == "2"
    puts "I scelto di stare"
    break #non si esce solo da if ma anche da while
  end

  #Hit
  new_card = deck.pop
  puts "Passo una carta al giocatore: #{new_card}"
  mycards << new_card
  mytotal = calcultate_total(mycards)
  puts "Il totale è #{mytotal}"

  if mytotal == 21
   puts "Congratulazioni, hai vinto!"
    exit
  else mytotal > 21
    puts "Mi spiace, hai perso"
    exit
  end
end

#Il turno del dealer

if dealertotal == 21
  puts "Mi spiace, il dealer ha vinto"
  exit
end

while dealertotal < 17
  #put
  new_card = deck.pop
  puts "Sto dando una nuova carta al dealer: #{new_card}"
  dealercards << new_card
  dealertotal = calcultate_total(dealercards)
  puts "Il totale del dealer: #{dealertotal}"

  if dealertotal == 21
    puts "Mi spiace, ha vinto il dealer"
    exit

  elsif dealertotal > 21
    puts "Complimenti, il dealer è fuori! Hai vinto"
    exit

  end 
end

#Comparare le mani
puts "Le carte del dealer:"
dealercards.each do |card|
  puts "=> #{card}"
end

puts ""

puts "Le tue carte:"
mycards.each do |card|
  puts "=> #{card}"
end

if dealertotal > mytotal
  puts "Sorry, dealer wins."
elsif dealertotal < mytotal
  puts "Congratulations, you win!"
else
  puts "It's a tie!"
end

exit
