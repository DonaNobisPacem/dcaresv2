class CreateFundableProjects < ActiveRecord::Migration
  def change
    create_table :fundable_projects do |t|
      t.references :project, index: true, foreign_key: true
      t.references :fund_source, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
