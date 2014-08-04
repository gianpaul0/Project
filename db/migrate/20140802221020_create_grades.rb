class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :actual_grade
      t.integer :expected_grade
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
    add_index :grades, [:user_id, :task_id], :unique => true
  end
end
