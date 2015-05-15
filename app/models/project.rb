class Project < ActiveRecord::Base
	belongs_to :university
	validates :project_name, presence: true
	validates :project_code, presence: true, uniqueness: true
	validates :university_id, presence: true
	has_many :project_images
	has_many :project_components
	has_many :project_phases
	accepts_nested_attributes_for :project_images, :project_components, :project_phases
end
