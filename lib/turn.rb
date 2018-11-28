class Turn
  attr_reader(:guess, :card)

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def guess
    @guess
  end

  def card
    @card
  end
end
