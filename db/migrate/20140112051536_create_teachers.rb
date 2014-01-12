class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :background
      t.string :expertise
      t.text :introduction

      t.timestamps
    end
  end
end
