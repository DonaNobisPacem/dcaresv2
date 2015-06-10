class FundablePhase < ActiveRecord::Base
  belongs_to :project_phase
  belongs_to :fund_source
end
