class AddLocationToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :location, :integer
  end
end
