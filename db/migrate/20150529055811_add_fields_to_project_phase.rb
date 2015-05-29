class AddFieldsToProjectPhase < ActiveRecord::Migration
  def change
  	add_column :project_phases, :bidding_remarks, :text
  	add_column :project_phases, :financial_remarks, :text
  	add_column :project_phases, :timeline_remarks, :text
  end
end
