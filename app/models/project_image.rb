class ProjectImage < ActiveRecord::Base
	include RocketPants::Cacheable
	mount_uploader :image, ImageUploader
	belongs_to :project
	validates :image, :file_size => {less_than_or_equal_to: 2.megabytes} 
end
