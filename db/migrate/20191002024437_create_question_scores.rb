class CreateQuestionScores < ActiveRecord::Migration[5.2]
  def change
    create_table :question_scores, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
