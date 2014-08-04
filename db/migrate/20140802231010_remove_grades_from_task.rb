class RemoveGradesFromTask < ActiveRecord::Migration
  def change
    remove_column :tasks, :actual_grade
    remove_column :tasks, :expected_grade
  end
end
