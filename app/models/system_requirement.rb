class SystemRequirement < ApplicationRecord
  validates :processor,:presence => {:message => " is required"}
  validates :graphicsCard,:presence => {:message => " is required"}
  validates :game_id,:presence => {:message => " is required"}
  validates :space, :presence => {:message => " is required"}
  validates :system, :presence => {:message => " is required"}
  validates :memory, :presence => {:message => " is required"}
  has_one :game
end
