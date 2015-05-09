class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.integer :worker_id
      t.string :worker_type
      t.references :assignable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
