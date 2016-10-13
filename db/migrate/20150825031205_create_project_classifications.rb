class CreateProjectClassifications < ActiveRecord::Migration
  def change
    create_table :project_classifications do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
