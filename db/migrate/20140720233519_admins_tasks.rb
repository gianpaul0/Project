class AdminsTasks < ActiveRecord::Migration
  def change
    create_table :admins_tasks do |t|
      t.integer :admin_id
      t.integer :task_id
    end
    add_index :admins_tasks, [:admin_id, :task_id], :unique => true

  end
end
