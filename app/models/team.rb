class Team < ApplicationRecord
  has_many :championships
  has_many :players
  has_many :competitions, through: :championships
end
