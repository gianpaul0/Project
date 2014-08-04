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

class Task < ActiveRecord::Base
  has_many :work_blocks
  belongs_to :student
  belongs_to :course
  has_many :grades
  def homeworks
    self.select{|t| t.type.eql? "Homework"}
  end

  def projects
    self.select{|t| t.type.eql? "Projec"}
  end

  def tests
    self.select{|t| t.type.eql? "Test"}
  end

  def total_hours(user)
    total=0
    self.work_blocks.where(:user_id => user).each do |wb|
      total=total+wb.total_hours.to_i
    end
    return total
  end

end

