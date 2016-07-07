 class Project < ApplicationRecord
 	has_many :time_entries
 	validates :name, presence: true
 	validates :email, presence: true, uniqueness: true
 	validates :attribute, length: { in: 1..30	 }
 	validates :attribute, format: { with: /[a-zA-Z0..9]\s}
end


# the_project = Project.find_by(id: 1)
# the_project.time_entries