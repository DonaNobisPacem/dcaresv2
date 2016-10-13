class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.integer :fund_source
      t.decimal :budget, :precision => 16, :scale => 2
      t.references :fundable, index: true, polymorphic: true

      t.timestamps null: false
    end
  end
end
