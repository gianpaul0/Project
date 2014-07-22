class AddTaskIdWorkBlocks < ActiveRecord::Migration
  def change
    add_column :work_blocks, :task_id, :integer
  end
end
