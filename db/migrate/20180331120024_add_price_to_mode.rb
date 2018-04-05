class AddPriceToMode < ActiveRecord::Migration
  def change
    add_column :modes, :price, :integer
  end
end
