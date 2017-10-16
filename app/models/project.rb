class Project < ApplicationRecord

	# Many to many relationship defined here, through a join table
  has_many :users_projects
	has_many :users, through: :users_projects

	# This means that they have to be present i.e. not null!
  validates :screenshot, :description, :technologies, :url, presence: true
end
