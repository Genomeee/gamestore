class CreateSystemRequirements < ActiveRecord::Migration[5.2]
  def change
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
