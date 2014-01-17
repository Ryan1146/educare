class AddMessageToStudents < ActiveRecord::Migration
  def change
    add_column :students, :message, :text
  end
end
