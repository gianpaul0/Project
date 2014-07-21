class CoursesAdmins < ActiveRecord::Migration
  def change
    create_table :courses_admins do |t|
      t.integer :admin_id
      t.integer :course_id
    end
    add_index :courses_admins, [:admin_id, :course_id], :unique => true
  end
end
