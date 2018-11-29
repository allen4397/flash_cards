class Round
  attr_reader :deck,
              :turns,
              :current_card

  def initialize(deck, turns=[])
    @deck = deck
    @turns = turns
    @current_card = deck.cards.first
  end
end
