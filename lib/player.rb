class Player < ActiveRecord::Base
  has_and_belongs_to_many :spaces
  belongs_to :game
end
