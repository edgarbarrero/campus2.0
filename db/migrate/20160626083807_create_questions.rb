class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :answer1
      t.string :anwer2
      t.string :anwer3
      t.integer :correct_answer
      t.integer :topic_id

      t.timestamps null: false
    end
  end
end
