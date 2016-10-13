class AddFields2ToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :bidding_remarks, :text
  	add_column :projects, :financial_remarks, :text
  	add_column :projects, :timeline_remarks, :text
  	add_column :projects, :has_components, :boolean, :default => true
  	add_column :projects, :has_phases, :boolean, :default => true
  end
end
