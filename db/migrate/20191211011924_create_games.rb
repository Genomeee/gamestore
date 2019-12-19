class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :price
      t.string :genre
      t.integer :system_requirement_id
      t.belongs_to :studio, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
