class Game < ApplicationRecord
  validates :name,:presence => {:message => " is required"}
  validates :genre,:presence => {:message => " is required"}
  validates :price,:presence => {:message => " is required"}
  validates :studio_id,:presence => {:message => " is required"}

  belongs_to :studio
  belongs_to :system_requirement
end
