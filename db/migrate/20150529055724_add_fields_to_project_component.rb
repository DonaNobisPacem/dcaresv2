class AddFieldsToProjectComponent < ActiveRecord::Migration
  def change
  	add_column :project_components, :bidding_remarks, :text
  	add_column :project_components, :financial_remarks, :text
  	add_column :project_components, :timeline_remarks, :text
  end
end
