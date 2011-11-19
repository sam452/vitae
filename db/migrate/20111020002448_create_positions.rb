class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :company
      t.string :position
      t.text :objective
      t.text :grizzard
      t.text :skill

      t.timestamps
    end
  end
end
