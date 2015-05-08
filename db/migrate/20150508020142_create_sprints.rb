class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :name, null: false
      t.datetime :begin_date
      t.datetime :end_date
      
      t.integer :total_points

      t.timestamps null: false
    end
  end
end
