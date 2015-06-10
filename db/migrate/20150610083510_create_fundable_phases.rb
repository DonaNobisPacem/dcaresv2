class CreateFundablePhases < ActiveRecord::Migration
  def change
    create_table :fundable_phases do |t|
      t.references :project_phase, index: true, foreign_key: true
      t.references :fund_source, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
