# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:name => 'Gianpaulo', :email => 'g@h.com', :password => "12345678", :type => 'Student')
User.create(:name => 'Polo', :email => 'p@h.com', :password => "12345678", :type => 'Student')

Course.create(:name => 'Java')
Course.create(:name => 'Math')
Course.create(:name => 'English')
Course.create(:name => 'Physics')
Course.create(:name => 'C++')

