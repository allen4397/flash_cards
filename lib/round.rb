require './lib/turn'

class Round
  attr_reader :deck

  attr_accessor :turns,
                :current_card,
                :number_correct,
                :categories

  def initialize(deck, turns=[])
    @deck = deck
    @turns = turns
    @current_card = deck.cards.first
    @number_correct = 0
    @categories = []
  end

  def take_turn(guess)
    if categories.include?(current_card.category) == false
      @categories << current_card.category
    end
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn
    @current_card = deck.cards.rotate!.first
    if new_turn.correct?
      @number_correct += 1
    end
    return new_turn
  end

  def number_correct_by_category(category)
    total = 0
    turns.each do |turn|
      if turn.correct? && category == turn.card.category
        total += 1
      end
    end
    return total
  end

  def percent_correct
    correct = 0
    total = 0
    turns.each do |turn|
      if turn.correct?
        correct += 1
        total += 1
      else
        total += 1
      end
    end
    correct.to_f * 100 / total
  end

  def percent_correct_by_category(category)
    turns_in_category = 0
    turns.each do |turn|
      if turn.card.category == category
        turns_in_category += 1
      end
    end
    number_correct_by_category(category).to_f * 100 / turns_in_category
  end

  def start
    puts "Welcome! You're playing with #{deck.cards.count} cards."
    puts "-------------------------------------------------"
    while turns.count != deck.cards.count
      puts "This is card number #{turns.count + 1} out of #{deck.cards.count}."
      puts "Question: #{current_card.question}"
      answer = gets.chomp
      turn = take_turn(answer)
      puts turn.feedback
    end
    puts "****** Game over! ******"
    puts "You had #{number_correct} correct guesses out of #{turns.count} for a total score of #{percent_correct.to_i}%"
    categories.each do |category|
      puts "#{category} - #{percent_correct_by_category(category).to_i}% correct"
    end
  end
end
