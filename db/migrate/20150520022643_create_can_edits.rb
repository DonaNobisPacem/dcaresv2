class CreateCanEdits < ActiveRecord::Migration
  def change
    create_table :can_edits do |t|
      t.references :user, index: true, foreign_key: true
      t.references :university, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
