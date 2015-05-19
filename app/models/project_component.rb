class ProjectComponent < ActiveRecord::Base
  	belongs_to :project
  	validates :component_name, presence: true
	has_many :contractors, as: :contractable
	has_many :fund_sources, as: :fundable
	accepts_nested_attributes_for :fund_sources
end
