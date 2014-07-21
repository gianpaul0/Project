# == Schema Information
#
# Table name: work_blocks
#
#  id         :integer          not null, primary key
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime
#  updated_at :datetime
#

class WorkBlock < ActiveRecord::Base
  belongs_to :task
end
