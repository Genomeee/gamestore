class Game < ApplicationRecord
  belongs_to :studio
  has_one :system_requirement
end
