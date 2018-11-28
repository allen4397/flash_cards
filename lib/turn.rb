class Turn
  attr_reader(:guess, :card, :feedback)

  def initialize(guess, card)
    @guess = guess
    @card = card
    if @guess == card.answer
      @feedback = "Correct!"
    else
      @feedback = "Incorrect."
    end
  end

  def correct?
    if @guess == card.answer
      return true
    else
      return false
    end
  end
end
