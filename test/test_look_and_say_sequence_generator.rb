require 'minitest/autorun'
require 'minitest/power_assert'
require_relative '../lib/look_and_say_sequence_generator'

class LookAndSaySequenceGeneratorTest < Minitest::Test
  def test_that_result_sequence_is_corrent
    sequence  = LookAndSaySequenceGenerator.generate(5)
    sequence_reference = '111221'

    assert {
      sequence[4] == sequence_reference
    }
  end
end
