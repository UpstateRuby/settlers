class Game < ActiveRecord::Base
  validates :name, presence: true
  has_many :game_users
  has_many :players, through: :game_users, source: :user
  has_many :comments
  has_many :hexes
  belongs_to :theme

  before_validation :setup

  # upon game creation cards_games, hexes (others?) will be created

  
  def setup
    #assign theme if custom theme hasn't been selected
    assign_default_theme unless self.theme
    create_hexes
  end

  def assign_default_theme
    self.theme = Theme.where(name: Theme::DEFAULT_THEME).first
  end

  def create_hexes
    numbers = [2,3,3,4,4,5,5,6,6,8,8,9,9,10,10,11,11,12]
    resources = []
    
    4.times { resources << 'lumber' }
    4.times { resources << 'wool' }
    4.times { resources << 'grain' }
    3.times { resources << 'brick' }    
    3.times { resources << 'ore' }

    resources.shuffle

    numbers.shuffle.each do |number|
      self.hexes.build(number: number, resource: resources.pop)
    end

    #desert.
    self.hexes.build(number: nil, resource: self.theme.desert_name)

  end

end
