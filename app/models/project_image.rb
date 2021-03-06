class ProjectImage < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :project
	#belongs_to :imageable, polymorphic: true
	validates :image, :file_size => {less_than_or_equal_to: 2.megabytes} 
end
