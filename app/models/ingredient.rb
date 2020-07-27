class Ingredient < ApplicationRecord
  belongs_to :aliment
  belongs_to :meal
end
