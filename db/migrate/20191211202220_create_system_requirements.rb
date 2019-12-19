class CreateSystemRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :system_requirements do |t|
      t.string :system
      t.integer :memory
      t.string :processor
      t.string :graphicsCard
      t.integer :space
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
