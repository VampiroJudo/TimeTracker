 class Project < ApplicationRecord
 	has_many :time_entries
end


# the_project = Project.find_by(id: 1)
#the_project.time_entries