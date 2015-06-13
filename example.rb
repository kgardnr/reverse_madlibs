def say(message)
  puts "=> #{message}"
end

def exit_with(message)
  say message
  exit
end

exit_with("Error: No input file.") if ARGV.empty?
exit_with("Error: No such file exists.") if !File.exists?(ARGV[0])
