class Player < ApplicationRecord

#a player belongs to a game
  belongs_to :game


#a player can have many frames. up to 10 max
  has_many :frames, dependent: :destroy


 #a player name must be present to create a player
  validates_presence_of :name


 # a player name must not be longer than 30 characters
  validates_length_of :name, maximum: 30

end
