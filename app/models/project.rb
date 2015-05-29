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

	validate :project_images_count_within_bounds
	accepts_nested_attributes_for :project_images, :project_components, :project_phases, :fund_sources
	acts_as_xlsx

	private
		def project_images_count_within_bounds
	    	return if project_images.blank?
	    	errors.add(:project_images, "The project has raeched its image limit.") if project_images.size > 15
		end
end
