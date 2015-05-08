class CreateAcceptanceCriteria < ActiveRecord::Migration
  def change
    create_table :acceptance_criteria do |t|
      t.integer :story_id
      t.string :given
      t.string :when
      t.string :then

      t.timestamps null: false
    end

    add_index :acceptance_criteria, :story_id
  end
end
