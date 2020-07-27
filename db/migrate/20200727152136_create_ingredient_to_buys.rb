class CreateIngredientToBuys < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_to_buys do |t|
      t.references :shopping_list, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
