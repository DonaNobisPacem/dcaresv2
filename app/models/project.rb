class Project < ActiveRecord::Base
	belongs_to :university
	validates :project_name, presence: true
	validates :project_code, presence: true, uniqueness: true
	validates :university_id, presence: true

	has_many :project_images, :dependent => :destroy
	has_many :project_components, :dependent => :destroy
	has_many :project_phases, :dependent => :destroy

	#has_many :contractors, as: :contractable
	#has_many :fund_sources, as: :fundable
	has_many :fundable_projects, :dependent => :destroy
  	has_many :fund_sources, through: :fundable_projects

	validate :project_images_count_within_bounds
	accepts_nested_attributes_for :project_images, :project_components, :project_phases, :fund_sources
	acts_as_xlsx

	def variation_percentage
		if financial_variation.present?
			if financial_contract_price.present?
				return 100*financial_variation/financial_contract_price
			else
				if financial_budget.present?
					return 100*financial_variation/financial_budget
				end
			end
		end
	end

	def get_duration
		if timeline_actual_start.present? && timeline_actual_end.present?
			return (timeline_actual_end.to_date - timeline_actual_start.to_date).to_i
		end
	end

	private
		def project_images_count_within_bounds
	    	return if project_images.blank?
	    	errors.add(:project_images, "The project has reached its image limit.") if project_images.size > 15
		end
end
