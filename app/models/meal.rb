class Meal < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  # belongs_to :ingredient
end
