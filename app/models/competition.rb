class Competition < ApplicationRecord
  has_many :championships
  has_many :teams, through: :championships
end
