class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.boolean :passed
      t.integer :topic_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
