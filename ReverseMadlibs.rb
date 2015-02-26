# ARGV serve per passare un file al nostro programma e salvarlo in un array => puts ARGV[0].inspect or p ARGV

nouns = File.open("Nouns.txt", "r") do |f|
  f.read
end.split

verbs = File.open("Verbs.txt", "r") do |f|
  f.read
end.split

adjectives = File.open("Adjectives.txt", "r") do |f|
  f.read
end.split

dictionary = {
  nouns: nouns, 
  verbs: verbs, 
  adjectives: adjectives
}

def say(msg)
  puts "=> #{msg}"
end

def exit_with(msg)
  say msg
  exit
end

exit_with("No Input file") if ARGV.empty?
exit_with("Input file doesn't exist") if !File.exists?(ARGV[0])

contents = File.open(ARGV[0], "r") do |f|
  f.read
end

# gsub permette di sostituire un certo valore in stringa con altra roba presa da un dizionario, ad esempio
# se non gli si passa un sostituto, quello che restituisce è un enumerator, utile come indice per sostuituire più stringe dello stesso tipo con parole diverse
# contents.gsub!("NOUN", dictionary[:nouns].sample) => questo cambia tutti i "NOUN" con la stessa parola
# contents.gsub!("VERB", dictionary[:verbs].sample)
# contents.gsub!("ADJECTIVE", dictionary[:adjectives].sample)

contents.gsub!("NOUN").each do |noun|
  dictionary[:nouns].sample
end

contents.gsub!("VERB").each do |noun|
  dictionary[:verbs].sample
end

contents.gsub!("ADJECTIVE").each do |noun|
  dictionary[:adjectives].sample
end

p contents  

