class AddUniversityCodeToUniversity < ActiveRecord::Migration
  def change
    add_column :universities, :university_code, :string
  end
end
