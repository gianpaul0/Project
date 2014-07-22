# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Course < ActiveRecord::Base
  
  has_many :tasks
  has_and_belongs_to_many :admins, :join_table => "courses_admins"
  def self.courses_for_admin(admin)
    admin.courses
  end
  def users
    admins.select{|admin| admin.type.eql? "User"}
  end
  
end
