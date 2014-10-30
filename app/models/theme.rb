class Theme < ActiveRecord::Base

  # Title

  # cards/pieces/hex will be created upon theme creation

  belongs_to :user # For kicks and giggles on who owns it
  has_many :resource_card, :development_card, :piece, :hex

end
