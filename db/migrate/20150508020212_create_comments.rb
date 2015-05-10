class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :story_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end

    add_index :comments, :story_id
    add_index :comments, :user_id
  end
end
