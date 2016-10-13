class CreateProjectPhases < ActiveRecord::Migration
  def change
    create_table :project_phases do |t|
      t.references :project, index: true, foreign_key: true

      	t.string :phase_name
		t.text :description
		t.text :expected_outcome
		t.text :remarks
		t.decimal :percent_accomplishment, :precision => 16, :scale => 2
		t.datetime :percent_accomplishment_by

		t.string :bidding_contractor
		t.integer :bidding_number
		t.datetime :bidding_award
		t.datetime :bidding_proceed

		t.decimal :financial_budget, :precision => 16, :scale => 2
		t.decimal :financial_contract_price, :precision => 16, :scale => 2
		t.decimal :financial_actual_cost, :precision => 16, :scale => 2
		t.string :financial_source

		t.datetime :timeline_target_start
		t.datetime :timeline_target_end
		t.datetime :timeline_actual_start
		t.datetime :timeline_actual_end

      t.timestamps null: false
    end
  end
end
