 class Project < ApplicationRecord
 	has_many :time_entries
 
 	def self.clean_old
 		old_project = Project.where('created_at < ?', Time.now - 2.days)
 		old_project.destroy_all
 	end
end




