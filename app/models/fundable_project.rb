class FundableProject < ActiveRecord::Base
  belongs_to :project
  belongs_to :fund_source
end
