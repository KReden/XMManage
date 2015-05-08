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

      t.references :assignable, polymorphic: true, indes: true

      t.timestamps null: false
    end
  end
end
