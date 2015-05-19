class CreateFundSources < ActiveRecord::Migration
  def change
    create_table :fund_sources do |t|
      t.string :source_name
      t.references :fundable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
