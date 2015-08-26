class AddFundSourceClassificationToFundSources < ActiveRecord::Migration
  def change
    add_column :fund_sources, :fund_source_classification, :string
  end
end
