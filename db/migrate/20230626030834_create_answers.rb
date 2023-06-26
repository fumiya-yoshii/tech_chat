class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|

      t.timestamps
      t.integer :question_id
      t.text :content
      t.string :name
    end
  end
end
