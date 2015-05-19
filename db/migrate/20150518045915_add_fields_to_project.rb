class AddFieldsToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :status, :integer
  	add_column :projects, :completed_by, :datetime
  end
end
