class Fund < ActiveRecord::Base
  belongs_to :fundable, polymorphic: true
  validates :fund_source, presence: true
  
  def source_name
  	return FundSource.find(fund_source).source_name
  end

  def classification
  	return FundSource.find(fund_source).fund_source_classification
  end
end
