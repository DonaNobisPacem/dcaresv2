class ChangeBiddingContractorInProject < ActiveRecord::Migration
  def up
	  change_column :projects, :bidding_contractor, :text
	end

	def down
	  change_column :projects, :bidding_contractor, :string
	end
end
