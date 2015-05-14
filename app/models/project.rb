class Project < ActiveRecord::Base
	belongs_to :university
	validates :project_name, presence: true
	validates :project_code, presence: true, uniqueness: true
	validates :university_id, presence: true
	has_many :project_images
	accepts_nested_attributes_for :project_images
end
