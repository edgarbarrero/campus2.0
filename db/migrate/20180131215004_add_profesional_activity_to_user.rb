class AddProfesionalActivityToUser < ActiveRecord::Migration
  def change
    add_column :users, :professional_activity, :string
  end
end
