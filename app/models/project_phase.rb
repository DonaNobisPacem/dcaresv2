class ProjectPhase < ActiveRecord::Base
  	belongs_to :project
	validates :phase_name, presence: true

	has_many :fundable_phases
  	has_many :fund_sources, through: :fundable_phases

	accepts_nested_attributes_for :fund_sources
end
