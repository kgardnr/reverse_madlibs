require 'pry'

FILE = ARGV[0]

def get_words_from_file(filename)
  if !File.exists?(filename)
    say "Error: #{filename} doesn't exist."
    return
  end

  File.open("nouns.txt") do |f|
    f.read
  end.split
end

nouns = get_words_from_file("nouns.txt")
verbs = get_words_from_file("verbs.txt")
adjectives = get_words_from_file("adjectives.txt")

dictionary = {
  nouns: nouns,
  verbs: verbs,
  adjectives: verbs
}

def say(message)
  puts "=> #{message}"
end

def exit_with(message)
  say message
  exit
end

exit_with("Error: No input file.") if ARGV.empty?
exit_with("Error: No such file exists.") if !File.exists?(FILE)

contents = File.open(FILE, "r") do |f|
  f.read
end

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
