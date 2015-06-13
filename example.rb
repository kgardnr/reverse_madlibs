require 'pry'

FILE = ARGV[0]

dictionary = {
  nouns: %w(dog car boy table), 
  verbs: %w(run skip jump laugh),
  adjectives: %w(big small great funny orange)
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
