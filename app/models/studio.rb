class Studio < ApplicationRecord
  validates :founder,:presence => {:message => " is required"}
  validates :name,:presence => {:message => " is required"}

  has_many :games
end
