class Dice

  SIDES = 6

  def roll
    roll_individual_dice + roll_individual_dice
  end

  def roll_individual_dice
    rand(SIDES) + 1
  end
  
end