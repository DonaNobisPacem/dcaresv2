class ProjectComponent < ActiveRecord::Base
  	belongs_to :project
  	validates :component_name, presence: true

  	has_many :fundable_components
  	has_many :fund_sources, through: :fundable_components

	accepts_nested_attributes_for :fund_sources
end
