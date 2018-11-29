class Round
  attr_reader :deck

  attr_accessor :turns,
                :current_card,
                :number_correct

  def initialize(deck, turns=[])
    @deck = deck
    @turns = turns
    @current_card = deck.cards.first
    @number_correct = 0
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, @current_card)
    @turns << new_turn
    @current_card = deck.cards.rotate.first
    return new_turn
  end
end
