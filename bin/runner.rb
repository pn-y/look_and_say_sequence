require 'pry'
require_relative '../lib/look_and_say_sequence_generator'
require_relative '../lib/sequence_printer'

def main
  loop do
    puts 'How many sequence members do you want to print?'
    puts 'Enter a number or press enter to exit.'

    user_input = gets.chomp
    break if user_input.empty?

    begin
      sequence = LookAndSaySequenceGenerator.generate(Integer(user_input))
      SequencePrinter.print(sequence)
      puts
    rescue ArgumentError
      puts "Sorry, it seems your input is wrong. Try to enter a number.\n\n"
    end
  end
end

main
