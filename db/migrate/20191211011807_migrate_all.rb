class MigrateAll < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :founder

      t.timestamps
    end

    create_table :games do |t|
      t.string :name
      t.integer :price
      t.string :genre
      t.belongs_to :studio, index: { unique: true }, foreign_key: true
      t.belongs_to :system_requirement, index: { unique: true }, foreign_key: true

      t.timestamps
    end

    create_table :system_requirements do |t|
      t.string :system
      t.integer :memory
      t.string :processor
      t.string :graphicsCard
      t.integer :space
      t.belongs_to :game, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end