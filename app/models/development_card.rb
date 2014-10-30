class DevelopmentCard < ActiveRecord::Base

  # 25 cards total

  # type - (14)Knight card, (5)Progress card,  (10)Victory Points
  # title
  # description
  # action
    # (5)Victory Points - Give points to user
      # Chapel, Library, Market, Palace, University
    # Knight - move robber and steal card
    # Progress card 
      # (2)Year of Plenty - Take any 2 resouces from bank
      # (2)Road Building - Place 2 new roads
      # (2)Monopoly - Anounce a resource and all players give you their resources of that type

  # 1 Knight Card
  # 5 Victory Cards - because of different images and titles
  # 3 Progress Cards

  # image
  belongs_to :theme

end
