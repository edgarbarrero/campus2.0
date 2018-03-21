class CreateModeCourses < ActiveRecord::Migration
  def change
    create_table :modes do |t|
      t.string :title
      t.string :description
    end
  end
end
