class ProjectPhase < ActiveRecord::Base
  	belongs_to :project
	validates :phase_name, presence: true

	has_many :fundable_phases, :dependent => :destroy
  	has_many :fund_sources, through: :fundable_phases

	accepts_nested_attributes_for :fund_sources

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
end
