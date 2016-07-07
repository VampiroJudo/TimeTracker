class TimeEntry < ApplicationRecord
	belongs_to :project
	validates :hours, numericality: true
	validates :dates, presence: true, uniqueness: true
	validates :hours, presence: true, uniqueness: true
	validates :minutes, presence: true, uniqueness: true
	validates_associated :project
end


#the_entry = TimeEntry.create{
# 	:hours => 1
# 	:minutes => 45
# 	:comment => "Did stuff",
# 	:date => Time.now
# 	:project_id => 1)
# 					^
# 					|	
# 		The id of the project tp associate to
