def say(message)
  puts "=> #{message}"
end

say "Error: No input file." && exit if ARGV.empty?
say "Error: No such file exists." && exit if !File.exists?(ARGV[0])
