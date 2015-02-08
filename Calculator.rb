#1. Interpolazione delle stringhe vs conchenazione
#   La differenza tra puts "bla bla #{variabile}" e "bla bla" + variabile è che il primo trasforma direttamente in .to_s.

#2. Estrarre codice che si ripete in una logica da mettere in un metodo

#3. Capire dei tipi (o classi) delle variabili, come in linea ..if operatore == "1"..

#4. Non convertire "dati grezzi" perché ad esempio se faccio. to_i quando prendo num_1 e num_2, poi magari avrò problemi dopo
#   Ricordarsi che ad esempio nelle divisioni bisogna fare .to_f

#5. Usare "pry" per il debugging. Posso chiedere lo stato delle variabili, cambiarne il valore...
#   Usare CTRL + D per continuare l'esecuzione

#6. Variabili locali dichiarate fuori da un metodo sono disponibili anche dentro
#   Ma non vale il contrario dentro do...end

#7. Se manipolo una variabile dentro un metodo, sto solo utilizzando il valore, non cambia la variabile.
#   Ma ci sono metodi che cambiano la variabile, come .uniq! Insomma dipende.



#require "pry"


def say(msg)
  puts "=> #{msg}"
end

say "Dimmi il primo numero"
num_1 = gets.chomp

say "Dimmi il secondo numero"
num_2 = gets.chomp

say "1) Addizione 2) Sottrazione 3) Moltiplicazione 4) Divisione"
operator = gets.chomp

#binding.pry

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
