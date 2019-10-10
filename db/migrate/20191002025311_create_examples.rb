class CreateExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :examples do |t|
      t.integer :user_id
      t.string :example_title
      t.text :example_content
      t.text :example_answer
      t.boolean :example_status, default: false

      t.timestamps
    end
  end
end
