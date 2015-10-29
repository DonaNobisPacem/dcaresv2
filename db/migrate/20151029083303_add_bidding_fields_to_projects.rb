class AddBiddingFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :bidding_preprocurement, :datetime
    add_column :projects, :bidding_prebidding, :datetime
    add_column :projects, :bidding_postquali, :datetime
    add_column :projects, :bidding_purchase, :datetime
  end
end
