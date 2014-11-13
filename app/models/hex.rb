class Hex < ActiveRecord::Base
  # Type
  # image

  belongs_to :theme
  belongs_to :game

  before_validation :setup

  def setup
    
  end

end
