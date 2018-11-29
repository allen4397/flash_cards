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
    if new_turn.correct?
      @number_correct =+ 1
    end
    return new_turn
  end

  def number_correct_by_category(category)
    total = 0
    @turns.each do |turn|
      if turn.correct? && category == turn.card.category
        total += 1
      end
    end
    return total
  end
end
