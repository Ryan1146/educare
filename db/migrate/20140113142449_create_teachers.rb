class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :background
      t.integer :academic_group
      t.integer :location
      t.text :expertise
      t.text :introduction

      t.timestamps
    end
  end
end
