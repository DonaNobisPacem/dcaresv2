class AddProjectClassificationToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :classification, :integer
  end
end
