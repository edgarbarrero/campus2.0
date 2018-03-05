class AddLongerIntegersToUserFields < ActiveRecord::Migration
  def change
    change_column :users, :phone, 'text using phone::text'
  end
end
