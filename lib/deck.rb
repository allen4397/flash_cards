class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    return @cards.count
  end

  def cards_in_category(specific_category)
      category_cards = []
    @cards.each do |card|
      if card.category == specific_category
        category_cards << card
      end
    end
    return category_cards
  end
end
