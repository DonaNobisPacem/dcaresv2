class ProjectPhase < ActiveRecord::Base
  	belongs_to :project
	validates :phase_name, presence: true
	has_many :contractors, as: :contractable
	has_many :fund_sources, as: :fundable
	accepts_nested_attributes_for :fund_sources
end
