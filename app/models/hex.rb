class Hex < ActiveRecord::Base

  # Type
  # image

  belongs_to :theme
  belongs_to :game

end
