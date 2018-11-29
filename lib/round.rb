class Round
  attr_reader :deck,
              :turns

  def initialize(deck, turns=[])
    @deck = deck
    @turns = turns
  end
end
