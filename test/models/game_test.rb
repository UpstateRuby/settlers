require 'test_helper'

class GameTest < ActiveSupport::TestCase
  test "validates presence of name" do
    game = Game.new
    game.valid?
    assert game.errors.messages[:name].any?
  end

  test "A game should initialize with correct number hexes" do
    game = Game.new(name: "test game")
    game.save
    assert(game.hexes.count == 19)
  end
end
