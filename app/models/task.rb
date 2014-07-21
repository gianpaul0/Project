# == Schema Information
#
# Table name: tasks
#
#  id             :integer          not null, primary key
#  type           :string(255)
#  name           :string(255)
#  due_date       :datetime
#  expected_grade :integer
#  actual_grade   :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Task < ActiveRecord::Base
  has_many :work_logs
  belongs_to :user
  belongs_to :course
end
