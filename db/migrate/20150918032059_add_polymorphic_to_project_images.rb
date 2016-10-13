class AddPolymorphicToProjectImages < ActiveRecord::Migration
  def change
    add_column :project_images, :imageable_type, :string
  end
end
