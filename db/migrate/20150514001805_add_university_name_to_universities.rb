class AddUniversityNameToUniversities < ActiveRecord::Migration
  def change
    add_column :universities, :university_name, :string
  end
end
