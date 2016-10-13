class ProjectStatus < ActiveRecord::Base
	validates :description, presence: true
end
