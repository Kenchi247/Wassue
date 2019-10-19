class CreateExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :examples, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.string :example_title
      t.text :example_content
      t.text :example_answer
      t.boolean :example_status

      t.timestamps
    end
  end
end
