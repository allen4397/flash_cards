require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/card_generator'

class CardGeneratorTest < Minitest::Test
  def test_it_exists
    card_generator = CardGenerator.new("cards.txt")

    assert_instance_of CardGenerator, card_generator
  end

  def test_it_contains_a_file
    card_generator = CardGenerator.new("cards.txt")

    assert_equal "cards.txt", card_generator.file
  end

  def test_it_can_create_cards
    card_generator = CardGenerator.new("cards.txt")

    assert_instance_of Card, card_generator.cards[0]
  end
end
