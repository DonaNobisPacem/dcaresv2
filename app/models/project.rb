class Project < ActiveRecord::Base
	belongs_to :university
	validates :project_name, presence: true
	validates :project_code, presence: true, uniqueness: true
	validates :university_id, presence: true
	has_many :project_images
	has_many :project_components
	has_many :project_phases
	has_many :contractors, as: :contractable
	has_many :fund_sources, as: :fundable
	accepts_nested_attributes_for :project_images, :project_components, :project_phases, :fund_sources
end
