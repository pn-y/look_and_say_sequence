class LookAndSaySequenceGenerator
  INITIAL_SEQUENCE = '1'

  class << self
    def generate(count)
      generate_sequence([INITIAL_SEQUENCE], count - 1)
    end

    private

    def generate_sequence(sequence, members_left)
      return sequence if members_left == 0

      next_value = generate_next_sequence_member(sequence.last)
      generate_sequence(sequence + [next_value], members_left - 1)
    end

    def generate_next_sequence_member(sequence)
      sequence.gsub(/(.)\1*/) {|s| s.size.to_s + s[0] }
    end
  end
end
