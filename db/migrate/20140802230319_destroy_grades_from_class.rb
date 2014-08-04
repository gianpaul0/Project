class DestroyGradesFromClass < ActiveRecord::Migration
  def change
    remove_column :courses, :grades
  end
end
