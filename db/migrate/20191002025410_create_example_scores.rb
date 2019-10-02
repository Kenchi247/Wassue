class CreateExampleScores < ActiveRecord::Migration[5.2]
  def change
    create_table :example_scores do |t|
      t.integer :user_id
      t.integer :example_id

      t.timestamps
    end
  end
end
