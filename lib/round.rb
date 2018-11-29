class Round
  attr_reader :deck

  attr_accessor :turns,
                :current_card

  def initialize(deck, turns=[])
    @deck = deck
    @turns = turns
    @current_card = deck.cards.first
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, @current_card)
    @turns << new_turn
    return new_turn
  end
end
