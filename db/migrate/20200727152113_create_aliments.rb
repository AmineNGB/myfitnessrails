class CreateAliments < ActiveRecord::Migration[6.0]
  def change
    create_table :aliments do |t|
      t.string :name
      t.json :infos

      t.timestamps
    end
  end
end
