class AddDesignationToUser < ActiveRecord::Migration
  def change
    add_column :users, :designation, :integer
  end
end
