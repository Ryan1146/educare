class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :background
      t.string :academic_group
      t.string :location
      t.text :expertise
      t.text :introduction

      t.timestamps
    end
  end
end
