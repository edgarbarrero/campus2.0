class CreateModesTopics < ActiveRecord::Migration
  def change
    create_table :modes_topics do |t|
      t.integer :topic_id
      t.integer :mode_id
    end
  end
end
