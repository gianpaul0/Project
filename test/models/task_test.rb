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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
