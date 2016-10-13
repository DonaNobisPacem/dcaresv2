class AddDefaultValueToUserAttribute < ActiveRecord::Migration
  	def up
	  change_column :users, :admin, :boolean, :default => false
	  change_column :users, :approved, :boolean, :default => false
	end

	def down
	  change_column :users, :admin, :boolean, :default => nil
	  change_column :users, :approved, :boolean, :default => nil
	end
end
