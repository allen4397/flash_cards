require './lib/card.rb'

class Turn
  def initialize(string, card)
    @guess = string
    @card = card
  end

  def guess
    @guess
  end
end
