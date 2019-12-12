class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :price
      t.string :genre
      t.references :studio, foreign_key: true
      t.references :system_requirement, foreign_key: true

      t.timestamps
    end
  end
end
