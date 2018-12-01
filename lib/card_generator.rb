require 'csv'
require './lib/card'

class CardGenerator
  attr_reader :file,
              :cards

  def initialize(file)
    @file = file
    @cards = []
    cards = CSV.open file, headers: false
    cards.each do |row|
      @cards << Card.new(row[0], row[1], row[2])
    end
  end


end
