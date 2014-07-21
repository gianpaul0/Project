class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :type
      t.string :name
      t.datetime :due_date
      t.integer :expected_grade
      t.integer :actual_grade

      t.timestamps
    end
  end
end
