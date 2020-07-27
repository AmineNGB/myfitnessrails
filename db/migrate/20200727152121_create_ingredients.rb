class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.references :aliment, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
