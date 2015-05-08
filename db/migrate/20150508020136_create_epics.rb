class CreateEpics < ActiveRecord::Migration
  def change
    create_table :epics do |t|
      t.string :name, null: false
      t.integer :total_points
      
      t.integer :created_by_id, null: false
      t.integer :updated_by_id, null: false

      t.timestamps null: false
    end
  end
end
