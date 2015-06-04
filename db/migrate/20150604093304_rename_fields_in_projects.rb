class RenameFieldsInProjects < ActiveRecord::Migration
  def change
  	rename_column :projects, :bidding_duration, :timeline_duration
  	rename_column :projects, :bidding_extension, :timeline_extension

  	rename_column :project_components, :bidding_duration, :timeline_duration
  	rename_column :project_components, :bidding_extension, :timeline_extension

  	rename_column :project_phases, :bidding_duration, :timeline_duration
  	rename_column :project_phases, :bidding_extension, :timeline_extension
  end
end
