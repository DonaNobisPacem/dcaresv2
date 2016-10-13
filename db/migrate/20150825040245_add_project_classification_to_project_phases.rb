class AddProjectClassificationToProjectPhases < ActiveRecord::Migration
  def change
    add_column :project_phases, :classification, :integer
  end
end
