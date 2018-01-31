class AddProfesionalActivityToUser < ActiveRecord::Migration
  def change
    def change
      add_column :users, :professional_activity, :string
    end
  end
end
