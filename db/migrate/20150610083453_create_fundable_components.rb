class CreateFundableComponents < ActiveRecord::Migration
  def change
    create_table :fundable_components do |t|
      t.references :project_component, index: true, foreign_key: true
      t.references :fund_source, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
