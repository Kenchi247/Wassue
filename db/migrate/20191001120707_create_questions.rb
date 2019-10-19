class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.string :title
      t.string :question_status, default: "未回答"
      t.text :premise
      t.text :error
      t.text :try
      t.text :content
      t.text :note

      t.timestamps
    end
  end
end
