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

  test "getting numbers for resources" do
    game = Game.new
    numbers = game.get_numbers_for_resources
    assert(numbers == [2,3,3,4,4,5,5,6,6,8,8,9,9,10,10,11,11,12])
  end

  test "getting numbers for resources with less than default" do
    game = Game.new
    numbers = game.get_numbers_for_resources(1)
    assert(numbers == [2,3,3,4,4,5,5,6,6,8,8,9,9,10,10,11,11,12])
  end

  test "getting numbers for resources with 1 more than default" do
    game = Game.new
    numbers = game.get_numbers_for_resources(19)
    assert(numbers.count == 19, "Did not return correct amount of numbers for resources")
  end

  test "getting numbers for resources with 5 more than default" do
    game = Game.new
    numbers = game.get_numbers_for_resources(23)
    assert(numbers.count == 23, "Did not return correct amount of numbers for resourcs")
  end

  test "getting numbers for resources with 9 more than default" do
    game = Game.new
    numbers = game.get_numbers_for_resources(27).sort
    assert(numbers.count == 27, "Did not return correct amount of numbers for resources")
  end

  test "getting numbers for resources with standard expansion" do
    game = Game.new
    numbers = game.get_numbers_for_resources(28).sort
    assert(numbers == [2,2,3,3,3,4,4,4,5,5,5,6,6,6,8,8,8,9,9,9,10,10,10,11,11,11,12,12])
  end

  test "getting numbers for resources with multiple (3) of expansions" do
    game = Game.new
    numbers = game.get_numbers_for_resources(48)
    assert(
      numbers ==
      [
        2,3,3,4,4,5,5,6,6,8,8,9,9,10,10,11,11,12,
        2,3,4,5,6,8,9,10,11,12,
        2,3,4,5,6,8,9,10,11,12,
        2,3,4,5,6,8,9,10,11,12
      ],
      "Failed to generate expected array with a multiple of expansions"
    )
  end

end
