require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/round.rb'

class RoundTest < Minitest::Test
  def test_it_exists
    round = Round.new

    assert_instance_of Round, round
  end
end
