require 'csv'
require './lib/card'

class CardGenerator
  attr_reader :file

  def initialize(file)
    @file = file
  end


end
