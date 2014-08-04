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

require 'test_helper'

class GradeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
