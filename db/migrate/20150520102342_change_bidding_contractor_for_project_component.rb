class ChangeBiddingContractorForProjectComponent < ActiveRecord::Migration
  	def up
  		change_column :project_components, :bidding_contractor, :text
  		change_column :project_phases, :bidding_contractor, :text
	end

	def down
		change_column :project_components, :bidding_contractor, :string
  		change_column :project_phases, :bidding_contractor, :string
  	end
end
