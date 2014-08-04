# == Schema Information
#
# Table name: work_blocks
#
#  id         :integer          not null, primary key
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime
#  updated_at :datetime
#  task_id    :integer
#

class WorkBlock < ActiveRecord::Base
  belongs_to :task
  def total_hours
    (end_time - start_time)/3600
  end
end
