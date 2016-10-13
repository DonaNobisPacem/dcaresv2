class AddStatusToProjectComponent < ActiveRecord::Migration
  def change
  	add_column :project_components, :status, :integer
  	add_column :project_components, :completed_by, :datetime

  	add_column :project_phases, :status, :integer
  	add_column :project_phases, :completed_by, :datetime
  end
end
