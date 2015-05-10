class CreateAcceptanceCriterium < ActiveRecord::Migration
  def change
    create_table :acceptance_criterium do |t|
      t.integer :story_id, null: false
      t.string :given
      t.string :when
      t.string :then

      t.timestamps null: false
    end

    add_index :acceptance_criterium, :story_id
  end
end
