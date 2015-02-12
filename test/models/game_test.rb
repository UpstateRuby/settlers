require 'test_helper'

class GameTest < ActiveSupport::TestCase
  test "validates presence of name" do
    game = Game.new
    game.valid?
    assert game.errors.messages[:name].any?
  end
end
