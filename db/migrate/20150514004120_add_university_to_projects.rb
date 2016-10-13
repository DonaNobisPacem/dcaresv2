class AddUniversityToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :university, index: true, foreign_key: true
  end
end
