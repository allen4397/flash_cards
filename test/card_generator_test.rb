require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require 'csv'

class CardGeneratorTest < Minitest::Test
  def test_it_exists
    card_generator = CardGenerator.new("")

    assert_instance_of CardGenerator, card_generator
  end

  def test_it_contains_a_file
    card_generator = CardGenerator.new("cards.txt")

    assert_equal "cards.txt", card_generator.file
  end
end
