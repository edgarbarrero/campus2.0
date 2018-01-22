class AddColumnToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :answer4, :string
  end
end
