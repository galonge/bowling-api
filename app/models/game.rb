
class Game < ApplicationRecord

#a game can have many players
  has_many :players, dependent: :destroy

#a game can have many frames through players
  has_many :frames, through: :players

#to create a game . the created_by must be set
  validates_presence_of :created_by

 # length of created_by must not be greater than 30 characters
  validates_length_of :created_by, maximum: 30


end
