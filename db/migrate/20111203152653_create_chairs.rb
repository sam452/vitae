class CreateChairs < ActiveRecord::Migration
  def change
    create_table :chairs do |t|
	  t.string :name
      t.timestamps
    end
  end
end
