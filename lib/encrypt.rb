require './lib/enigma'

input_file = File.open(ARGV.first, "r")

@enigma = Enigma.new

message = input_file.read.chomp
output = @enigma.encrypt(message)

encrypted_message = output[:encryption]
output_file = File.open(ARGV.last, "w")
output_file.write(encrypted_message)

puts "Created 'encrypted.txt' with the key #{output[:key]} and date #{output[:date]}"
