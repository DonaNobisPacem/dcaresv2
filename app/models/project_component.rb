class ProjectComponent < ActiveRecord::Base
  	belongs_to :project
  	validates :component_name, presence: true

  	has_many :fundable_components, :dependent => :destroy
  	has_many :fund_sources, through: :fundable_components

  	has_many :funds, as: :fundable, :dependent => :destroy

	accepts_nested_attributes_for :fund_sources
	accepts_nested_attributes_for :funds, :reject_if => :all_blank, :allow_destroy => true

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

	def date_period( date_from, date_to )
		if date_from.present? && date_to.present?
			days = (date_from.to_date - date_to.to_date).to_i
			modifier = " days"
			modifier = " day" unless days > 1
			return days.to_s + modifier
		else
			return ""
		end
	end
	
	def bidding_percentage
		bid_percent = 0.00
		step_value = 100.00 / 7.00
		bid_percent += step_value if bidding_preprocurement.present?
		bid_percent += step_value if bidding_prebidding.present?
		bid_percent += step_value if bidding_bidding.present?
		bid_percent += step_value if bidding_postquali.present?
		bid_percent += step_value if bidding_award.present?
		bid_percent += step_value if bidding_purchase.present?
		bid_percent += step_value if bidding_proceed.present?
		return bid_percent.round(2)
	end

	def get_duration
		if timeline_actual_start.present? && timeline_actual_end.present?
			return (timeline_actual_end.to_date - timeline_actual_start.to_date).to_i
		end
	end
end
