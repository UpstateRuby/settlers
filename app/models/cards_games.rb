class CardsGames < ActiveRecord::Base

  belongs_to :game
  belongs_to :resource_card
  belongs_to :user

  # card_type - model name

end
