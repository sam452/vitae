class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.string :company
      t.string :position
      t.string :objective
      t.text :grizzard
      t.text :skill
      t.string :pid

      t.timestamps
    end
  end
end
