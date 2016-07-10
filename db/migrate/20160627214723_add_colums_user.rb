class AddColumsUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :dni, :string
    add_column :users, :phone, :integer
    add_column :users, :birth_date, :string
    add_column :users, :date, :string
    add_column :users, :card_token, :string
  end
end
