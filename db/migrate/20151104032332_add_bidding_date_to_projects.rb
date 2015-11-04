class AddBiddingDateToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :bidding_bidding, :datetime
    add_column :project_components, :bidding_bidding, :datetime
    add_column :project_phases, :bidding_bidding, :datetime
  end
end
