require 'test_helper'

class DiceTest < ActiveSupport::TestCase
  test "rolls should be between 2 and 12" do
    d = Dice.new
    results = []
    1000.times do
      results << d.roll
    end

    assert(results.min >= 2)
    assert(results.max <= 12)
  end
end
