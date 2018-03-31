class AddEmailToMode < ActiveRecord::Migration
  def change
    add_column :modes, :email_content, :text
  end
end
