class UsersProject < ApplicationRecord
	# The join table relationship
	belongs_to :user
	belongs_to :project
end