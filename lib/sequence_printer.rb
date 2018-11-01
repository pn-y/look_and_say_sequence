class SequencePrinter
  class << self
    def print(sequence)
      puts 'Here is your sequence:'

      sequence.each do |member|
        puts member
      end
    end
  end
end
