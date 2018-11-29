class Round
  attr_reader :deck,
              :turns,
              :current_card

  def initialize(deck, turns=[])
    @deck = deck
    @turns = turns
    @current_card = deck.cards.first
  end

  def take_turn(guess)
    Turn.new(guess, @current_card)
  end
end
