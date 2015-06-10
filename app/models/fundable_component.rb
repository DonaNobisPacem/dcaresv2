class FundableComponent < ActiveRecord::Base
  belongs_to :project_component
  belongs_to :fund_source
end
