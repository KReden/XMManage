class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name, null: false
      t.string :description
      t.string :assumptions
      t.string :status
      t.integer :estimated_points
      t.integer :actual_points
      t.boolean :complete, default: false
      t.datetime :completed_on
      t.integer :created_by_id
      t.integer :updated_by_id
      t.integer :epic_id
      t.integer :sprint_id

      t.timestamps null: false
    end

    add_index :stories, :epic_id
    add_index :stories, :sprint_id
  end
end
