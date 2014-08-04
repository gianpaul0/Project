class AddUserIdToWorkBlock < ActiveRecord::Migration
  def change
    add_column :work_blocks, :user_id, :integer
  end
end
