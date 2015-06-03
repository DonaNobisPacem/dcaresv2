class AddFields3ToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :end_user, :text
  	add_column :projects, :bidding_duration, :integer
  	add_column :projects, :bidding_extension, :integer
  	add_column :projects, :financial_variation, :integer
  	
  	add_column :project_components, :end_user, :text
  	add_column :project_components, :bidding_duration, :integer
  	add_column :project_components, :bidding_extension, :integer
  	add_column :project_components, :financial_variation, :integer

  	add_column :project_phases, :end_user, :text
  	add_column :project_phases, :bidding_duration, :integer
  	add_column :project_phases, :bidding_extension, :integer
  	add_column :project_phases, :financial_variation, :integer
  end
end
