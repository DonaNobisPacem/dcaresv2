class Project < ActiveRecord::Base
	belongs_to :university
	validates :project_name, presence: true
	validates :project_code, presence: true, uniqueness: true
	validates :financial_budget, presence: true, numericality: { :greater_than => 0 }
	validates :university_id, presence: true
	validates :status, presence: true
	validates :classification, presence: true

	has_many :project_images, :dependent => :destroy
	has_many :project_components, :dependent => :destroy
	has_many :project_phases, :dependent => :destroy

	#has_many :contractors, as: :contractable
	#has_many :fund_sources, as: :fundable
	has_many :fundable_projects, :dependent => :destroy
  	has_many :fund_sources, through: :fundable_projects

  	has_many :funds, as: :fundable, :dependent => :destroy

	validate :project_images_count_within_bounds
	accepts_nested_attributes_for :project_images, :project_components, :project_phases, :fund_sources
	accepts_nested_attributes_for :funds, :reject_if => :all_blank, :allow_destroy => true

	acts_as_xlsx
	include PublicActivity::Model
  	tracked owner: Proc.new { |controller, model| controller.current_user ? controller.current_user : nil }

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

	private
		def project_images_count_within_bounds
	    	return if project_images.blank?
	    	errors.add(:project_images, "The project has reached its image limit.") if project_images.size > 15
		end
end
