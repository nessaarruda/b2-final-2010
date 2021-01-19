class Competition < ApplicationRecord
  has_many :championships
  has_many :teams, through: :championships
  has_many :players, through: :teams

  def players_average_age
    players.average(:age).to_f.round(2)
  end
end
