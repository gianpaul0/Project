# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  name       :string(255)
#  due_date   :datetime
#  created_at :datetime
#  updated_at :datetime
#  course_id  :integer
#

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
