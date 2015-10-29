class AddBiddingFieldsToProjectPhases < ActiveRecord::Migration
  def change
    add_column :project_phases, :bidding_preprocurement, :datetime
    add_column :project_phases, :bidding_prebidding, :datetime
    add_column :project_phases, :bidding_postquali, :datetime
    add_column :project_phases, :bidding_purchase, :datetime
  end
end
