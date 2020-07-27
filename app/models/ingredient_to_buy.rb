class IngredientToBuy < ApplicationRecord
  belongs_to :shopping_list
  belongs_to :meal
end
