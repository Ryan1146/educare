class AddAcademicGroupToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :academic_group, :integer
  end
end
