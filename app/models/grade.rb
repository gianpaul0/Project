# == Schema Information
#
# Table name: grades
#
#  id             :integer          not null, primary key
#  actual_grade   :integer
#  expected_grade :integer
#  admin_id       :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Grade < ActiveRecord::Base
  belongs_to :user
  belongs_to :task
end
