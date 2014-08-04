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
  has_and_belongs_to_many :users, :join_table => "courses_users"
  def self.courses_for_user(user)
    user.courses
  end
  def students
    users.select{|user| user.type.eql? "Student"}
  end
  
  def best_student
    best= self.students.first
    if(self.students.size == 1)
      return self.user.first.name
    end#of if
    
    self.students.each do |u|
      if (self.total_grade(best) < self.total_grade(u))
        best=u
      end#of if
    end#do
    return best.name
  end#best student
  
  def total_hours(user)
    total=0
    self.tasks.each do |t|
      total = total +t.total_hours(user).to_i
    end#do
    return total
  end#total hours

  def total_grade(user)
    homework=0
    project=0
    test=0
    hsum=0
    psum=0
    tsum=0
    self.tasks.each do |t|
      if(t.type.eql? "Homework")
        Grade.where(:task_id => t.id, :user_id => user.id).each do |g|
          homework=homework+g.actual_grade.to_i
          hsum=hsum+1
        end

      elsif(t.type.eql? "Projec")
        Grade.where(:task_id => t.id, :user_id => user.id).each do |g|
          project=project+g.actual_grade.to_i
          psum=psum+1
        end
        
      elsif(t.type.eql? "Test")
        Grade.where(:task_id => t.id, :user_id => user.id).each do |g|
          test=test+g.actual_grade.to_i
          tsum=tsum+1
        end
      end #end of if
    end #end of task each
    if(hsum == 0)
      hsum=1
    end
    if(psum == 0)
      psum=1
    end
    if(tsum == 0)
      tsum=1
    end

    
    return homework*0.2/hsum + project*0.35/psum + test*0.45/tsum
  end#total grade


end
