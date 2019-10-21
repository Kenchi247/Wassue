class CreateQuestionComments < ActiveRecord::Migration[5.2]
  def change
    create_table :question_comments, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.integer :question_id
      t.text :question_comment
      t.timestamps
    end
  end
end
