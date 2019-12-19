class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :price
      t.string :genre
      t.belongs_to :studio, index: { unique: true }, foreign_key: true
      t.belongs_to :system_requirement, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
