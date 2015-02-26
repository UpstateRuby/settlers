class Hex < ActiveRecord::Base
  # Type
  # image

	# Now a deletegate
  #belongs_to :theme
	delegate :theme, :to => :game

  belongs_to :game

  before_validation :setup

  def setup

  end

  def resource_name
    name = resource + '_name'
    theme.send name.to_sym
  end

  def resource_image_url
    name = resource + '_hex_img_path'
    theme.send name.to_sym
  end

end
