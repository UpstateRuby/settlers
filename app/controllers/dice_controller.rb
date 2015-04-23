class DiceController < AuthenticatedController

  respond_to :json

  def roll
    render json: { value: Dice.new.roll }
  end

end