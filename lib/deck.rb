class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    return @cards.count
  end

  def cards_in_category(category)
    specific_category = []
    @cards.each do |card|
      if card.category == category
        specific_category << card
      end
    return specific_category
    end
  end
end
