class CreateAcceptanceCriteria < ActiveRecord::Migration
  def change
    create_table :acceptance_criteria do |t|
      t.integer :story_id, null: false
      t.string :gvn
      t.string :whn
      t.string :thn

      t.timestamps null: false
    end

    add_index :acceptance_criteria, :story_id
  end
end
