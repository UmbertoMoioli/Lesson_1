#1. interpolazione delle stringhe vs conchenazione
#La differenza tra puts "bla bla #{variabile}" e "bla bla" + variabile è che il primo trasforma direttamente in .to_s.

#2. estrarre codice che si ripete in una logica da mettere in un metodo

#3. capire dei tipi (o classi) delle variabili, come in linea ..if operatore == "1"..

#4. non convertire "dati grezzi" perché ad esempio se faccio. to_i quando prendo num_1 e num_2, poi magari avrò problemi dopo
#ricordarsi che ad esempio nelle divisioni bisogna fare .to_f



def say(msg)
  puts "=> #{msg}"
end

say "Dimmi il primo numero"
num_1 = gets.chomp

say "Dimmi il secondo numero"
num_2 = gets.chomp

say "1) è addizione, 2) sottrai, 3) moltipla, 4) dividi"
operator = gets.chomp

if operator == "1"
  result = num_1.to_i + num_2.to_i
elsif operator == "2"
  result = num_1.to_i - num_2.to_i
elsif operator =="3"
  result = num_1.to_i * num_2.to_i
else operator == "4"
  result = num_1.to_f / num_2.to_f
end

say "Il risultato è #{result}"
