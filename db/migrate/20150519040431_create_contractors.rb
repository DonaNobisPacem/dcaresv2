class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.references :contractable, polymorphic: true, index: true
      t.string :contractor_name

      t.timestamps null: false
    end
  end
end
