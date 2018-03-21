class AddModeColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :mode_id, :integer
  end
end
