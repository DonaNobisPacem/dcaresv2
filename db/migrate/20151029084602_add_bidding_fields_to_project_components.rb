class AddBiddingFieldsToProjectComponents < ActiveRecord::Migration
  def change
    add_column :project_components, :bidding_preprocurement, :datetime
    add_column :project_components, :bidding_prebidding, :datetime
    add_column :project_components, :bidding_postquali, :datetime
    add_column :project_components, :bidding_purchase, :datetime
  end
end
