class Project < ApplicationRecord
  has_many :users_projects
	has_many :users, through: :users_projects

	# This means that they have to be present i.e. not null!
	# Slight problem (It creates a gap when between the label and text field when left null 
	# and errors if you try to refresh without putting data in them)
  validates :screenshot, :description, :technologies, :url, presence: true
end
