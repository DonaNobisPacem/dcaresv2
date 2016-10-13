class ChangeVariationInProject < ActiveRecord::Migration
  	def up
	  	change_column :projects, :financial_variation, :decimal, :precision => 16, :scale => 2
	  	change_column :project_components, :financial_variation, :decimal, :precision => 16, :scale => 2
	  	change_column :project_phases, :financial_variation, :decimal, :precision => 16, :scale => 2
	end

	def down
		change_column :projects, :financial_variation, :integer
	  	change_column :project_components, :financial_variation, :integer
	  	change_column :project_phases, :financial_variation, :integer
	end 
end
