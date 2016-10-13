class AddProjectClassificationToProjectComponents < ActiveRecord::Migration
  def change
    add_column :project_components, :classification, :integer
  end
end
